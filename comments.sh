#!/bin/bash
#
# This Script print a message
# Author: Samarth
# Date: 04-Oct-2025

echo "Hello World!" #This print hello world to be terminal

# You can also comment inline
echo "This runs" # <- This is an inline comment

# echo "This won’t run because it’s commented out"

#Option 1: Prefix each line with 
# This is line 1 of comment
# This is line 2 of comment
# This is line 3 of comment

#Option 2: Use a : ' ... ' block
 : '
This is a multi-line comment
It won’t get executed
Useful for disabling a block of code
 '
echo "Script continues here"

#Option 3: Use a <<COMMENT block (here-doc trick)
<<COMMENT
Everything inside here
is treated as a comment
until COMMENT is seen again
COMMENT

echo "Script still runs fine"
