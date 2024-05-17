#!/bin/bash

source check_internet.sh
BETTER_DISCORD_PATH="$HOME/.better_discord/"
CUR_PATH="$(pwd)"

if ! command -v npm &>/dev/null; then
	echo "Please certify that you have the npm installed before run this script."
	exit 1
fi

if ! command -v pnpm &>/dev/null; then
	echo "Please certify that you have the pnpm installed before run this script."
	exit 1
fi

if [! -d $BETTER_DISCORD_PATH ]; then
	git clone https://github.com/BetterDiscord/BetterDiscord.git $BETTER_DISCORD_PATH
fi

cd $BETTER_DISCORD_PATH
git checkout main
git pull

pnpm install
pnpm build
pnpm inject

killall Discord

cd $CUR_PATH
