#!/bin/bash
i=0
while [ $i lt 3 ]
do
date > file$i
aws s3 cp  file$i s3://kiranbucket123
echo "file$i is uploaded"
sleep 1
i=$(($i+1))
done

