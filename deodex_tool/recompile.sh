#!/bin/bash

#Variables
IFS=:
ver="0.1.0"
tools=`dirname $0`/tools
$source=$1

#Function Section
function build             #Build the apk file.
{
	rm -f $rname
	if apktool b $fname $rname ;then
		echo
		rm -rf $fname
	else
		echo "$fname: Build failed."
		exit 1
	fi
}

function decode
{
	if apktool d -f $rname $fname;then
		deodex
	else
		echo "Decode $rname failed."
		exit 1
	fi
}

function search     #Get the filename.
{
	find $source -name *.apk | while read rname ;do
		fname=${rname%%.apk}
		decode
	done
}

#Main

echo
echo "Re-compiling tool for Android ICS."
echo "Using modded apktool.jar"
echo "Version: ${ver}"
echo "Written by @librehat"
echo
export PATH=$PATH:$tools
if [ -n "$1" ];then
	search
else
	echo "ERROR!"
	echo "Please add directory name as the argument."
	echo
	echo "recompile.sh [source directory]"
	echo "i.e.: recompile.sh app"
fi