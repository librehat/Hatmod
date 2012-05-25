#!/bin/sh
ver="0.1.1"
#Author William Wong (@librehat)
#License: GPLv3
file=$1

function extract
{
	if [ -d out ] && rm -rf out;then
		echo "Extracting..."
		if unzip -q $file -d out;then
			iapk && pushdata
		else
			echo "Extract failed."
			exit 1
		fi
	else
		echo "Abort: Remove out directory failed."
		exit 1
	fi
}

function iapk
{
	echo "Installing..."
	adb install out/application.apk
}

function pushdata
{
	echo "Copying data files..."
	dataname=`ls out/ | grep Gloft`
	if [ -n "$dataname" ];then
		adb push out/$dataname /mnt/sdcard/gameloft/$dataname
	else
		dataname=`ls -F out/ | grep "/$"`
		if [ -n "$dataname" ];then
			adb push out/$dataname /mnt/sdcard/Android/data/$dataname
		else
			echo "ERROR: Couldn't recognize the type of data."
			echo "You may need to copy the data files manually."
			exit 1
		fi
	fi
}

echo "GPK Installer. Version: $ver"

if [ -n "$file" ];then
	extract
else
	echo "ERROR: No input file."
	echo
	echo "Usage:"
	echo "./extract_gpk.sh [gpk filename]"
	echo "Be patient while extracting, installing and copying."
	echo "i.e.:"
	echo "./extract_gpk.sh a_game.gpk"
	echo
fi