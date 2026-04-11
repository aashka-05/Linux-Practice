#!/bin/bash
echo "Enter the path of your log file:"
read filepath
if ! [ -f "$filepath" ] ; then
	echo "File not found"
	exit 1;
fi
total=$(wc -l < "$filepath")
error=$(grep -i "ERROR" "$filepath" | wc -l)
info=$(grep -i "INFO" "$filepath" | wc -l)
warning=$(grep -i "WARNING" "$filepath" | wc -l)
echo "Total : $total"
echo "Error : $error"
echo "Info : $info"
echo "Warning : $warning"
