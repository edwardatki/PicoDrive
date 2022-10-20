#!/bin/bash

# Parse flags
while getopts ":u:" opt; do
  case $opt in
    u)
		driveLetter=$OPTARG
      	;;
  esac
done

# Move to build directory
mkdir -p build
cd build

echo --- CMake ---
if ! cmake ..; then
	exit 1
fi

echo --- Make ---
if ! make -j6; then
	exit 1
fi

if [[ -v driveLetter ]]; then 
	echo --- Uploading ---
	if ! sudo mount -t drvfs $driveLetter: /mnt/$driveLetter; then
	    echo Check Pico is connected and in bootloader mode
		exit 1
	fi

	cp *.uf2 /mnt/$driveLetter
	sudo umount /mnt/d
fi

echo --- Success ---
exit 0
