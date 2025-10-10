#!/bin/bash

echo "Enter a day (mon/tue/wed/thu/fri): "
read day

case $day in
	mon) echo "Today is Monday:";;
	tue) echo "Today is Tuesday:";;
	wed) echo "Today is Wednesday:";;
	thu) echo "Today is Thursday:";;
	fri) echo "Today is Friday:";;
	*) echo "Invalid Input";;
esac
