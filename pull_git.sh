#=============================================================================
#
# Author: mark.zhang
#
# Mail: veryitman@126.com
#
# Last modified: 2016-04-09 18:04
#
# Filename: pull_git.sh
#
# Description: 
#
#=============================================================================

#!/bin/sh

echo $1

if [ -z $1 ]; then
    echo "Warning: No valid path that is updated."
    exit
fi

for gitFile in `find $1 -name ".git"`
do
    echo $gitFile
    cd $gitFile
    cd ../
    git pull
done


