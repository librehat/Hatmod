#!/bin/sh
ver="0.1.2"
#Author William Wong (@librehat)
#License: GPLv3
file=$1

function extract
{
	[ -d out ] && `rm -rf out`
	echo "Extracting..."
	if unzip -q "$file" -d out;then
		iapk && pushdata
	else
		echo "Extract failed."
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
	dataname=`ls -F out/ | grep "/$"`
	case "$dataname" in
		"Gloft*")	adb push out/$dataname /mnt/sdcard/gameloft/games/$dataname
		"*.*.*")	adb push out/$dataname /mnt/sdcard/Android/data/$dataname
		*)	echo "ERROR: Couldn't recognize the type of data."
			echo "You may need to copy the data files manually."
	esac
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