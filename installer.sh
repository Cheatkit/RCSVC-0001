#!/bin/bash

# Clone github repository to tmp

git clone --depth 1 https://github.com/rcprc/rcsvc-0001.git /tmp/repo

# Make directory in /usr/local/bin (silent)
echo -en "Creating directory in /usr/local/bin/."
sleep 0.5
echo -en "Creating directory in /usr/local/bin/.."
sleep 0.5
echo -en "Creating directory in /usr/local/bin/..."
sleep 0.5
echo -en "Creating directory in /usr/local/bin/."
sleep 0.5
echo -en "Creating directory in /usr/local/bin/.."
sleep 0.5
echo -en "Created directory in /usr/local/bin named logkeeper"
sudo mkdir /usr/local/bin/logkeeper /dev/null 2>&1



# Move necessary files to /usr/local/bin (silent)
echo -en "Moving files."
sleep 0.5
echo -en "Moving files.."
sleep 0.5
echo -en "Moving files..."
sudo mv /tmp/tepo/file /usr/local/bin/logkeeper /dev/null 2>&1


# Give all .sh files executable permissions
sudo chmod +x /usr/local/bin/logkeeper/*.sh

# create countfile
echo -en "Creating Countfile."
sleep 0.5
echo -en "Creating Countfile.."
sleep 0.5
echo -en "Creating Countfile..."
sleep 0.5
echo -en "Creating Countfile."
sudo touch countfile /usr/local/bin/logkeeper/countfile /dev/null 2>&1

# Copy the service file to destination
echo "Moving .service file."
sleep 0.5
echo "Moving .service file.."
sleep 0.5
echo "Moving .service file..."
sleep 0.5
echo "Moving .service file."
sudo mv /tmp/repo/logkeeper.service /etc/systemd/system /dev/null 2>&1

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

