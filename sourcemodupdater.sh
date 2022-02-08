#!/bin/bash
user=`whoami`
selfdir=`dirname "$0"`
serverdir="/home/base/"
sourcemodversion="1.10"
sourcemodscrapeurl="https://sm.alliedmods.net/smdrop/${sourcemodversion}/sourcemod-latest-linux"
sourcemodlatestfile=$(wget "${sourcemodscrapeurl}" -q -O -)
sourcemoddownloadurl="https://www.sourcemod.net/latest.php?os=linux&version=${sourcemodversion}"
sourcemodurl="${sourcemoddownloadurl}"

echo Now downloading sourcemod $sourcemodversion from $sourcemoddownloadurl
{
wget -c ${sourcemoddownloadurl} -O sourcemod.tar.gz
} &> /dev/null
echo Extracting package and removing unnecessary files
{
tar  -xzf sourcemod.tar.gz
rm $selfdir/sourcemod.tar.gz
rm $selfdir/addons/sourcemod/*.txt
rm -r $selfdir/addons/sourcemod/configs
rm -r $selfdir/addons/sourcemod/scripting
rm -r $selfdir/addons/sourcemod/translations
rm -r $selfdir/addons/sourcemod/logs
rm -r $selfdir/addons/sourcemod/plugins
rm -r $selfdir/cfg
} &> /dev/null
echo Copying files 
cp -r $selfdir/addons /home/$user/serverfiles/csgo/
echo Cleaning download folder
rm -r $selfdir/addons
echo Done!