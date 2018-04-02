#!/bin/bash
echo "Assigning execute permission..."
chmod +x pulse
echo "Building Directory..."
DIRECTORY="$HOME/bin"
if [ ! -d "$DIRECTORY" ]
then
        mkdir $DIRECTORY
fi
sudo cp pulse $DIRECTORY/pulse
sudo cp delete.sh /etc/cron.weekly
sudo cp archive.sh /etc/cron.daily
echo "Done installing. Type pulse -h to get started."
