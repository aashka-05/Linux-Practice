#!/bin/bash
echo "Enter the folder path you want to backup:"
read filepath
if [ -d "$filepath" ] ; then
	echo "Folder found!"
else
	echo "Folder not found!"
	exit 1
fi
if [ -z "$(ls -A "$filepath")" ] ; then
	echo "Warning! Folder is empty"
fi
backup="backup_$(date +%Y-%m-%d_%H-%M-%S)"
mkdir "$backup"
cp -R "$filepath" "$backup"
echo "Backup created successfully"
