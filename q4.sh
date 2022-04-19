#!/bin/bash

read -r input
input=(${line//,/ })
len=${#a[*]}

#BubbleSort
for ((i=0; i<len; i++))
do
    for((j=0; j<len-i-1; j++))
    do
        if [ ${a[j]} -gt ${a[j+1]} ]
        then
            #Swap
            temp=${a[j]}
            a[j]=${a[j+1]}  
            a[j+1]=$temp
        fi
    done
done

echo ${a[*]}