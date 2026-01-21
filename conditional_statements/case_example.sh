#!/bin/bash

echo "Enter a day (mon/tue/wed/thu/fri): "
read day

# Convert input to lowercase
day=${day,,}

case $day in
        mon|monday)
                echo "Today is Monday"
                ;;
        tue|tuesday)
                echo "Today is Tuesday"
                ;;
        wed|wednesday)
                echo "Today is Wednesday"
                ;;
        thu|thursday)
                echo "Today is Thursday"
                ;;
        fri|friday)
                echo "Today is Friday"
                ;;
        *)
                echo "Invalid input. Please enter mon to fri."
                ;;
esac

