#!/bin/bash
file_management="/home/sam/linux_devops_lab/fundamentals/file_management"
for file in "$file_management"/*.csv; do
   if [ -f "$file" ]; then
     echo "$file" 
     else 
     echo "no of .csv file found in  $file_management"
   fi
done

if [ -f "$file= sample_dataset.csv" ]; then
count="$ wc -l sample_dataset.csv"
echo "no of lines is sample_dataset.csv is $count"
fi

