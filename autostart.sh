SCRIPT_PATH=$(realpath "$BASH_SOURCE")
SCRIPT_DIR=$(dirname "$SCRIPT_PATH")

SERVICE_NAME="custom_discord_updater.service"
SERVICE_PATH="/etc/systemd/system/$SERVICE_NAME"

sudo rm -f $SERVICE_PATH
sudo touch $SERVICE_PATH
sudo chmod 744 $SERVICE_PATH

echo "
[Unit]
Description=Run the discord installation scripts at startup

[Service]
Type=simple
ExecStart=/bin/bash $SCRIPT_DIR/install.sh

[Install]
WantedBy=default.target
" | sudo tee $SERVICE_PATH

sudo systemctl daemon-reload
sudo systemctl enable $SERVICE_NAME
