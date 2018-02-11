#=============================================================================
#
# Author: mark.zhang
#
# Mail: veryitman@126.com
#
# Last modified: 2015-12-19 12:25
#
# Filename: open_mac_dir.sh
#
# Description: 
#
#=============================================================================

#!/bin/sh

echo "1. XCode dir"
echo "2. Provision Profile dir"
echo "3. XCodeApp's Resource dir"
echo "4. Cellar tools dir"
echo "5. XCode CodeSnippets"
echo "6. XCode DerivedData"
echo "7. XCode DeviceSupport"
echo "8. XCode Plugins"

read entry

echo $entry

function openProvisioningDir()
{
    open /Users/mark/Library/MobileDevice/Provisioning\ Profiles
}

function openXCodeDir()
{
    open  /Users/mark/Library/Developer/Xcode
}

function openXCodeAppResourceDir()
{
    open /Applications/Xcode.app/Contents/SharedFrameworks/DTDeviceKitBase.framework/Versions/A/Resources
}

function openCellarDir()
{
    open /usr/local/Cellar
}

function openCodeSnippetsDir()
{
    open ~/Library/Developer/Xcode/UserData/CodeSnippets
}

function openDerivedDataDir()
{
    open ~/Library/Developer/Xcode/DerivedData
}

function openXCodeDeviceSupportDir()
{
    open /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/DeviceSupport
}

function openXCodePluginDir()
{
    open ~/Library/Application\ Support/Developer/Shared/Xcode/Plug-ins
}


if [ 1 = $entry ]; then
    openXCodeDir
elif [ 2 = $entry ]; then
    openProvisioningDir
elif [ 3 = $entry ]; then
    openXCodeAppResourceDir
elif [ 4 = $entry ]; then
    openCellarDir
elif [ 5 = $entry ]; then
    openCodeSnippetsDir
elif [ 6 = $entry ]; then
    openDerivedDataDir
elif [ 7 = $entry ]; then
    openXCodeDeviceSupportDir
elif [ 8 = $entry ]; then
    openXCodePluginDir
else
    echo "Not support!"
fi

