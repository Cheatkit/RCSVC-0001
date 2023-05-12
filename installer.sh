#!/bin/bash

# Clone github repository to tmp

git clone --depth 1 https://github.com/rcprc/rcsvc-0001.git /tmp/repo

# Make directory in /usr/local/bin (silent)
sudo mkdir /usr/local/bin/logkeeper /dev/null 2>&1


# Move necessary files to /usr/local/bin (silent)
sudo mv /tmp/tepo/file /usr/local/bin/logkeeper /dev/null 2>&1

# Give all .sh files executable permissions
sudo chmod +x /usr/local/bin/logkeeper/*.sh

# create countfile
sudo touch countfile /usr/local/bin/logkeeper/countfile /dev/null 2>&1

# Copy the service file to destination
cp logkeeper.service /etc/systemd/system /dev/null 2>&1

# Reload systemd configuration
systemctl daemon-reload

# Enable service
systemctl enable logkeeper.service

# Start service
systemctl start logkeeper.service

sleep 2

echo "Installation complete."
read -p "Do you want to delete the installer script? (Y/N)" delete_installer

if [[ "$delete_installer" == "Y" || "$delete_installer" == "y" ]]; then
    sudo rm installer.sh
    echo "Installer script deleted."
else
    echo "Installer script not deleted."
fi

