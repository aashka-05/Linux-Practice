#!/bin/bash
echo "Enter 1 to check whether your number is odd or even."
echo "Enter 2 to check whether your number is positive,negative or zero."
read ch
echo "Enter the number:"
read num
if ! [[ $num =~ ^-?[0-9]+$ ]] ; then
	echo "Invalid number"
	exit 1
fi
case $ch in
	1)
		if [ $((num%2)) -eq 0 ] ; then
			echo "Number is even"
		else
			echo "Number is odd"
		fi
		;;
	2)
		if [ $num -lt 0 ] ; then
			echo "Number is negative"
		elif [ $num -eq 0 ] ; then
			echo "Number is zero"
		else
			echo "Number is positive"
		fi
		;;
	*)
		echo "Invalid option selected"
esac
