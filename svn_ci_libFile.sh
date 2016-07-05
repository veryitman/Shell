#=============================================================================
#
# Author: mark.zhang
#
# Mail: veryitman@126.com
#
# Last modified: 2016-07-04 14:12
#
# Filename: svn_ci_libFile.sh
#
# Description: 查找后缀为 so|a|o 的文件并提交到 svn. 
#
#=============================================================================
#! /bin/sh

# svn add

find . -name "*.so" -exec svn add {} +
find . -name "*.a" -exec svn add {} +
find . -name "*.o" -exec svn add {} +

# svn ci

svn ci -m "Add so/a/o file."

