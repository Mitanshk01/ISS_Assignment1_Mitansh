#!/bin/bash
read file
#Size of file in bytes
wc -c < $file
#Total lines in the file
wc -l < $file
#Total words in the file
wc -w < $file
#Total words in each line
awk '$0="line No:"NR"-Count of Words:"NF' $file
#List of repeated words and number of times they were repeated
inp="$file"
grep -E -o '\w++' "$inp" | sort >"nfile.txt"
uniq -c "nfile.txt" > countnew.txt
while read -r line;
do
array=($line)
if (($((${array[0]}-1))==0))
then
continue
else
echo "Word : ${array[1]} - Count of Repetitions:$((${array[0]}-1))"
fi
done < countnew.txt
rm -r countnew.txt nfile.txt