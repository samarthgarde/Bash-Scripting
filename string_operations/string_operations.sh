#!/bin/bash

myVar="hello world!"
myVar2="SAMARTH"

length=${#myVar}

upper=${myVar^^}
lower=${myVar2,,}

echo "$upper"
echo "$lower"
echo "$length"

replace=${myVar/world/Guys}
echo "$replace"

slice=${myVar:0:11}
echo "$slice"

