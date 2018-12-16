#=============================================================================
#
# Author: mark.zhang
#
# Mail: veryitman@126.com
#
# Last modified: 2018-12-16 12:49
#
# Filename: wirs.sh
#
# Description: 使用 usb 连接 ios 设备，然后创建虚拟网卡连接 wireshark
#
#=============================================================================

#!/bin/sh

# 获取命令返回的结果
did=`idevice_id -l`

# 调试打印结果
echo $did

# 创建一个虚拟网卡
cr=`rvictl -s $did`

echo $cr

