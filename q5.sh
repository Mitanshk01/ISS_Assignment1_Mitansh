#!/bin/bash
read string
len=`echo $string | wc -c | awk '{print $1}'`

for ((i = $len - 1; i >= 0; i--))
    do
    reverse="${string:$i:1}"
        echo -n "$reverse"
    done
echo \

read input
echo $input | tr 'a-zA-Z' 'b-zA-Za'

read stringnew
len=`echo $stringnew | wc -c | awk '{print $1}'`

for ((i = $len/2 - 1; i >= 0; i--))
    do
    reverse="${stringnew:$i:1}"
        echo -n "$reverse"
    done
for ((i = $len/2; i <=$len - 1; i++))
    do
    reverse="${stringnew:$i:1}"
        echo -n "$reverse"
    done
echo \