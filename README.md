# Logkeeper
Logging-Service for UNIX based systems, made in shell

## Table of Contents

- [Logkeeper](#logkeeper)
  - [Table of Contents](#table-of-contents)
  - [Description](#description)
  - [Features](#features)
  - [Installation](#installation)
  - [Usage](#usage)
  - [Configuration](#configuration)
  - [Contributing](#contributing)
  - [License](#license)
  - [Contact](#contact)


## Description

This project is a shell script that enables users to monitor a specific port of their choice. The script continuously captures and logs incoming and outgoing network traffic on the specified port, including details such as IP addresses, protocols, timestamps, and additional data. It provides users with a flexible and customizable solution for monitoring and analyzing network activity. The logged information is stored in a dedicated log file, allowing users to easily review and analyze the recorded data for troubleshooting, security auditing, or analysis purposes

## Features

Function: Initial Setup

    File: logkeeper.sh

This function performs the initial setup for the logkeeper script. It checks if the count file exists. If the count file exists, it executes the log menu. Otherwise, it initializes the setup process.
Function: Read Port Information

    File: logkeeper-printer.sh

This function reads the information about which port to listen to from the logkeeper-config file. It uses this information to monitor network activity on the specified port. The captured information is then saved to a new file named logkeeper-$date.log, where $date represents the current date. A new log file is created each day to maintain updated and organized logs. Each entry in the log file includes the date, timestamp, and a message associated with the logged network activity.
Function: Adjust Configuration Values

    File: logkeeper-writer.sh

This function allows users to adjust the values inside the logkeeper-config file. It is part of the main menu in logkeeper.sh. Users can modify configuration values related to the logkeeper script, such as the port to monitor or other settings. After successfully adjusting the values, the function returns the user to the main menu.
Function: Print Log File Values

    File: logkeeper-reader.sh

This function prints out specified values from the log file. Users can specify which values they want to print, and the function displays those values on the screen. Once the values are printed, users can choose to return to the main menu.
Function: Logkeeper Installer

    File: logkeeper-installer.sh

This function is responsible for setting up the logkeeper script. It creates a path for storing log files, ensuring that the necessary directories are present. Additionally, it generates and configures a service file, which allows the logkeeper script to run as a service in the background. Finally, it creates a count file, which is used to track the number of log files created.

These functions collectively provide the functionality to monitor and log network activity on a specific port, configure the logkeeper script, manage log files, and facilitate the installation process.

## Installation

To install and set up the logkeeper script, follow these steps:

 1. Start Linux
    
    Start your linuxsystem on which you want to install and run the script on. This script will run on the following linux distributions:
        
        1. Ubuntu
        2. Fedora
        3. Debian
        4. CentOS
        5. Kali Linux
        6. Linux Mint
    
    It will run on any system which has the same file architecture as Linux Ubuntu 22.04

 2. Create file installer.sh
     
    Create the installer.sh file for the installation of the logging script. This can be done by using the `touch` command. The follwing command would look like this:

        touch installer.sh

 3. Set permissions for the installer.sh file

    Setting the file permissions for the `installer.sh` file is a crucial step to install the logkeeper service. To set the file permissions for the `installer.sh` file you can use the `chmod` command. The command for setting the permissions of `installer.sh` file to executable is the following:

        chmod +x installer.sh

 4. Running the installer.sh file

    While normally running shell-scripts you only need to go into the directory, where the script file is. Now for the `installer.sh` file you'll need `sudo` or `root` privileges or else the installation wont work. So please use the `sudo` command to run/execute the shell-script. To run/execute the shell-script you can use the following command: 

        sudo ./installer.sh

    Now you only have to wait for everything to install correctly

 5. Check the installation
    
    You can check if everything was installed properly by checking the created `outfile` of the `install.sh` file. This file should be created at `/var/log/logkeeper/installer/` if it isnt created at the given location use the `locate` command to search for the outfile.

    If it isnt at the following path as specified `/var/log/logkeeper/installer/` you can use the following command:

        find / -name "outfile.txt" -type f -mtime -1

    or alternatively use the `locate` command

        sudo updatedb
        locate filename
    
    Et voila your logkeeper service is installed.

## Usage

To use the service just use the explained commands below:

To specify which port has to be monitored use the following command:

    COMMAND

## Configuration

The logkeeper service bases/fetches its configurations on the `log-keeper` config file, which should be located in the same directory as the other files. However if this is not the case please make use of the following command:

        logkeeper check file

This command should activate the `logkeeper-monitor.sh` script and this script will adjust everything for you, see it as a debugging tools. However this script should be working by default.

## Contributing

Specify how others can contribute to your project. If you welcome contributions, provide guidelines for submitting pull requests, reporting issues, or suggesting improvements. Include any relevant information on coding styles, development environment setup, or testing procedures.

## License

The Logkeeper service inherites the base liscence of the RCPRC organization.
- [GNU Affero General Public License v3.0](https://github.com/RCPRC/.github/blob/main/LICENSE)

## Disclaimer

This script is provided as-is without any warranty. The authors and contributors of the script are not responsible for any consequences resulting from its usage. Use it at your own risk.

## Contact

Optionally, provide contact information or links to relevant resources where users can reach out to you for support, feedback, or further information about the project.

---

&copy; CastouloLee 2023
