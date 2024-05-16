# Discord Installer

## Overview

This repository contains scripts to facilitate the installation of Discord and BetterDiscord on Linux systems. The scripts simplify the process, ensuring that you can quickly get Discord and BetterDiscord up and running on your machine.

## Contents

- `discord_installer.sh`: A script to install the latest version of Discord.
- `better_discord_installer.sh`: A script to install BetterDiscord, an extension for Discord that enhances its functionality.

## Requirements

- A Linux distribution (tested on Ubuntu, Debian and Fedora).
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

## Scripts Details

### discord_installer.sh

This script performs the following actions:

- Detects the Linux distribution and version.
- Downloads the appropriate Discord package.
- Installs Discord using the system's package manager or manually, if necessary.

### better_discord_installer.sh

This script performs the following actions:

- Checks if Discord is already installed.
- Downloads and build the BetterDiscord source code.
- Runs the BetterDiscord installer to integrate it with your existing Discord installation.

## Contributing

Contributions are welcome! Please fork the repository and submit a pull request with your improvements or bug fixes.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Disclaimer

These scripts are provided as-is. Use them at your own risk. The author is not responsible for any damage or data loss that may occur from using these scripts.

## Contact

For any questions or issues, please open an issue on the GitHub repository or contact the maintainer.
