# Discord Installer

## Overview

This repository contains scripts to facilitate the installation of Discord and BetterDiscord on Linux systems. The scripts simplify the process, ensuring that you can quickly get Discord and BetterDiscord up and running on your machine.

## Contents

- `discord_installer.sh`: A script to install the latest version of Discord.
- `better_discord_installer.sh`: A script to install BetterDiscord, an extension for Discord that enhances its functionality.
- `autostart.sh`: A script to create a systemd service to run at Linux startup.
- `install.sh`: A script to run both `discord_installer.sh` and `better_discord_installer.sh` scripts.

## Requirements

- A Linux distribution (tested on Ubuntu, Debian, and Fedora).
- `wget` installed on your system.
- `tar` for extracting files.
- `npm` and `pnpm` for BetterDiscord building and installation.

## Usage

### Installing Discord

To install Discord using the `discord_installer.sh` script, follow these steps:

1. **Make the Script Executable:**

   ```bash
   chmod +x discord_installer.sh
   ```

2. **Run the Script:**
   ```bash
   ./discord_installer.sh
   ```

### Installing BetterDiscord

To install BetterDiscord using the `better_discord_installer.sh` script, follow these steps:

1. **Make the Script Executable:**

   ```bash
   chmod +x better_discord_installer.sh
   ```

2. **Run the Script:**
   ```bash
   ./better_discord_installer.sh
   ```

### Running Both Install Scripts

To run both `discord_installer.sh` and `better_discord_installer.sh` using the `install.sh` script, follow these steps:

1. **Make the Script Executable:**

   ```bash
   chmod +x install.sh
   ```

2. **Run the Script:**
   ```bash
   ./install.sh
   ```

### Creating a Service to Run on Linux Startup

To create a systemd service using the `autostart.sh` script, follow these steps:

1. **Make the Script Executable:**

   ```bash
   chmod +x autostart.sh
   ```

2. **Run the Script:**
   ```bash
   sudo ./autostart.sh
   ```

## Scripts Details

### discord_installer.sh

This script performs the following actions:

- Downloads the appropriate Discord package.
- Installs Discord using the system's package manager or manually, if necessary.

### better_discord_installer.sh

This script performs the following actions:

- Checks if Discord is already installed.
- Downloads and builds the BetterDiscord source code.
- Runs the BetterDiscord installer to integrate it with your existing Discord installation.

### autostart.sh

This script performs the following actions:

- Creates a systemd service file to run a specified script at Linux startup.
- Enables and starts the systemd service to ensure it runs on boot.

### install.sh

This script performs the following actions:

- Runs `discord_installer.sh` to install Discord.
- Runs `better_discord_installer.sh` to install BetterDiscord.

## Contributing

Contributions are welcome! Please fork the repository and submit a pull request with your improvements or bug fixes.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Disclaimer

These scripts are provided as-is. Use them at your own risk. The author is not responsible for any damage or data loss that may occur from using these scripts.

## Contact

For any questions or issues, please open an issue on the GitHub repository or contact the maintainer.
