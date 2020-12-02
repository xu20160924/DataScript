#!/bin/bash

#       Description: split str
#       Author: Denial.AO
#       Date: 2020-12-02 17:36:37
#       Version: v1.o


str=$1
split=$2

if [ ! -n "$split" ]; then
split=","
#echo "使用默认分隔符"
fi


array=(${str//${split}/ })  
for var in ${array[@]}
do
   echo $var
done

