#bin/bash

echo "start."
input=$1
output=$2

curdir=`dirname "$0"`
curdir=`cd ${curdir}; pwd`
echo $curdir
cd ${curdir}


echo "converting..."
while IFS= read -r line || [ -n "$line" ]
do
  #echo $line `dig +short "$line" | awk '{print $1}'` ;
   dig +short "$line" | awk '{print $1}' >> $output;
done < ${input} 
echo "done."
