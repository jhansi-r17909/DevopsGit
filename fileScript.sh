
# Write a script that accepts a user's name as input and prints a personalized greeting.
# Write a script to count number of files in a directory

# echo "Enter the directory:"
# read dir
# if [ -d $dir ]; then
# count=$(ls $dir | wc -l)
# echo "The number of files in $dir is $count"
# else
# echo "The files doesn't exits"


# Write a script to check whether a file exists or not. If it exists,
#  print its size and last modified date.




#!/bin/bash
#!/bin/bash

echo "Enter the file:"
read file

if [ -f "$file" ]; then
    size=$(du -sh "$file" | cut -f1)
    date=$(stat -c %y "$file")
    echo "The size is '$size' and the last modified date is '$date' for the file '$file'."
else
    echo "'$file' is not a valid regular file."
fi
or

echo "Enter the file:"
read file
if [ -f "$file" ]; then
size=$(du -sh  | cut -f1)
date=$(ls -l "$file"| cut -d " " -f6,7)
echo "The '$size' and '$date' of specific '$file'."
else
echo "its not a file"
fi

echo "Enter the directory:"
read dir

if [ -d $dir ]; then
list=$(ls "$dir" | sed s/.txt/.py)
date=$(date | cut -d " " -f6,7)
echo " '$date' and files '$list'."
else
echo "The file doesn't exist in the directories"
fi

echo "Enter the dir:"
read dir

if [ -d '$dir' ]; then
sorts=$( ls "$dir" | sort)
echo "the files are sorted in $sorts in ascending order"
else
echo "The files doesn't exists anymore"
fi

echo "Enter the dir:"
read dir

if [ -d "$dir" ]; then
sorts=$( ls "$dir" | sort)
echo "the files are sorted in '$sorts' in ascending order"
else
echo "The files doesn't exists anymore"
fi
