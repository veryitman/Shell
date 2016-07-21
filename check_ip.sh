#=============================================================================
#
# Author: mark.zhang
#
# Mail: veryitman@126.com
#
# Last modified: 2016-06-25 13:54
#
# Filename: check_ip.sh
#
# Description: 检查本机的 ip 地址
#
#=============================================================================

#!/bin/sh

ifconfig | grep "inet " | grep -v 127.0.0.1
