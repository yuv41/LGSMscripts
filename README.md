# LGSMscripts
My personal LGSM scripts to help automate stuff. (Build for CS:GO. can be easly altered to other games.
# Autoupdate.sh requirements.
Autoupdate.sh requires [discord.sh](https://github.com/ChaoticWeg/discord.sh) in the same folder as the updater, 
the updater should be located in the root folder of the user.
To run autoupdate.sh looped upon server boot i would recommended adding this Cronjob to your users crontab.
```
@reboot sleep 600 && nohup /path/to/update.sh & >> /dev/null
```
(This will run update.sh after 10 minutes of the server being on, and will keep it looping endlessly.)
# Sourcemod.sh requirements.
Sourcemod.sh has no requirements but edits to the folder of your serverfiles if you've changed it from serverfiles, (Line 28)
The updater should be located in a subdir of the root folder of the user (/home/user/sourcemodupdater)
