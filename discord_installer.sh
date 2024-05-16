#!/bin/bash
TEMP_P=/tmp/$(uuidgen)
DISCORD_PATH="/opt/Discord/"

JSON=$(cat $DISCORD_PATH/resources/build_info.json)
VERSION=$(echo $JSON | grep -o '"version": "[^"]*"' | sed 's/"version": "\(.*\)"/\1/')

mkdir $TEMP_P
wget "https://discord.com/api/download?platform=linux&format=tar.gz" -O $TEMP_P/discord.tar.gz
sudo tar -xvzf $TEMP_P/discord.tar.gz -C /opt
sudo ln -sf $DISCORD_PATH/Discord /usr/bin/Discord
sudo mv /opt/Discord/discord.desktop /opt/Discord/discord_old.desktop
sudo touch /opt/Discord/discord.desktop
sudo chmod 755 /opt/Discord/discord.desktop
sudo -- bash -c 'echo "[Desktop Entry]
Name=Discord
StartupWMClass=discord
Comment=All-in-one voice and text chat for gamers thats free, secure, and works on both your desktop and phone.
GenericName=Internet Messenger
Exec=/usr/bin/Discord
Icon=/opt/Discord/discord.png
Type=Application
Categories=Network;InstantMessaging;
Path=/usr/bin
" >> /opt/Discord/discord.desktop'
sudo cp -r /opt/Discord/discord.desktop /usr/share/applications
rm -rf $TEMP_P
