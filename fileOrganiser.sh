#!/bin/bash
echo "Enter the path of the folder you want to organize"
read filepath
if ! [ -d "$filepath" ] ; then
	echo "Folder not found"
	exit 1
fi
mkdir -p "$filepath/images"
mkdir -p "$filepath/docs"
mkdir -p "$filepath/others"

for file in "$filepath"/*
do
	if ! [ -f "$file" ] ; then
		continue
	fi
	if [[ "$file" == *.txt ]] ; then
		mv "$file" "$filepath"/docs/
	elif [[ "$file" == *.jpg || "$file" == *.png ]] ; then 
		mv "$file" "$filepath"/images/
	else
		mv "$file" "$filepath"/others/
	fi
done
echo "Folder is successfully organised!"
ls "$filepath" -R
