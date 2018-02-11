#!/bin/sh

echo `which xcpretty` 

myvar=`which xcpretty`

echo "myvar: "$myvar

if [ -n "$myvar" ]
then
    echo "你已经安装了 xcpretty."
else
    echo "你没有安装 xcpretty."
fi
