#!/bin/bash

source check_internet.sh
CUR_PATH="$(pwd)"

TEMP_P=/tmp/$(uuidgen)
BETTER_DISCORD=$TEMP_P/better_discord.AppImage

sudo killall Discord
wget https://github.com/BetterDiscord/Installer/releases/latest/download/BetterDiscord-Linux.AppImage -O $BETTER_DISCORD
chmod +x $BETTER_DISCORD
$BETTER_DISCORD
rm -rf $TEMP_P
cd $CUR_PATH
