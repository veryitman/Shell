#!/bin/sh

read -p "Please input an integer: " num
[[ "$num" = ^[1-9]+$ ]] && echo OK || echo Wrong
#注意正则表达式（^[1-9]+$）不能加引号！！！
