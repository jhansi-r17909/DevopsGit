
#!/bin/bash

read -p "Enter the name of the file:" name

  if [ -e $name ]; then
  echo "This file exists"
  else
   echo "This file doesn't exits anymore"

fi

echo "Enter the username:"
read user
if [ id $user &>/dev/null ]; then
echo "User $user exists"
else
echo "User $user doesn't exits"
fi

#!/bin/bash

echo "Enter the file:"
read file
if [ -f $file ]; then
word=$(wc -w < $file)
char=$(wc -c < $file)
line=$(wc -l < $file)
echo "Word=$word"
echo "Character=$char"
echo "Lines=$line"
else
echo "The file doesn't exists"
fi


#!/bin/bash

echo "Enter the directory:"
read name
if [ -d "$name" ]; then
echo `ls  "$name"`| sed s/.txt/.log/g
else
    echo "Directory does not exist."
fi

<<COMMENT
count=1
while [ $count -lt 8 ]
do
   echo "$count"
   ((count++))
done



while read line
do
echo "Line:$line"
done < $1


#To print count of characters along with lines
while read line
do
echo "$line:${#line}"
done < f1.txt

#To print line numbers with count of characters
line_number=1
while read line
do
echo "$line_number:${#line}"
((line_number++))
done < f1.txt
COMMENT

echo "Hello world"
echo "The current date and time is $(date) "

name=f1.txt
if [ -s "$name" ]
then
  echo "The given '$name' exits"
else
  echo "The file doesn't exits"
fi

#!/bin/bash

df -h | sed "1d"| while read Filesystem Size Used Avail UsedPercent MountedOn
do
Size_num=$( echo "$Size" | sed 's/[A-Za-z]//g' |awk '{print int($1)}' )
if [ "$Size_num" -gt 150 ]; then
 val=$( echo "$Filesystem" )
echo "$val"

fi
done

