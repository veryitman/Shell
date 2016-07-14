#=============================================================================
#
# Author: mark.zhang
#
# Mail: veryitman@126.com
#
# Last modified: 2016-07-08 10:07
#
# Filename: update_git.sh
#
# Description: 更新 git 项目. 
#
# 不需要每个目录去手动的 git pull.
#
#=============================================================================


#!/bin/sh

#find . -name "*" | xargs grep '.git'

# use current path as default path
curPath=`pwd`

# when you use specify path
if [ -z $1 ]; then
    echo "Empty path and use current path"
else
    echo "Will git pull path:" $1
    curPath=$1
fi

echo "current path:" $curPath

exit

for gitPath in $(find $curPath -name ".git")
do 
     echo "git path: " $gitPath

     # change the path to its parent's path
     cd ../
     echo "git paraent path:" `pwd`

     # update
     git pull

     cd $gitPath
done

