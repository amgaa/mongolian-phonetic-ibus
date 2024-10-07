#!/bin/bash

# Function to check if a package is installed
is_installed() {
    dpkg -l "$1" &> /dev/null
}

# Update package list
echo "Updating package list..."
sudo apt update

# Check and install ibus if not installed
if ! is_installed "ibus"; then
    echo "Installing ibus..."
    sudo apt install -y ibus
else
    echo "ibus is already installed."
fi

# Check and install ibus-table if not installed
if ! is_installed "ibus-table"; then
    echo "Installing ibus-table..."
    sudo apt install -y ibus-table
else
    echo "ibus-table is already installed."
fi


# Navigate to the directory containing the Mongolian Phonetic files
echo "Navigating to Mongolian-Phonetic-ibus directory..."
cd Mongolian-Phonetic-ibus

# Create the database for the Mongolian Phonetic layout
echo "Creating Mongolian Phonetic database..."
sudo ibus-table-createdb -n /usr/share/ibus-table/tables/Mongolian-Phonetic.db -s Mongolian-Phonetic.txt

# Copy the icon to the appropriate directory
echo "Copying Mongolian Phonetic icon..."
sudo cp Mongolian-Phonetic.svg /usr/share/ibus-table/icons/

# Restart the ibus daemon
echo "Restarting ibus daemon..."
ibus-daemon -drx

echo "Installation complete. Now you should"
echo "        1) add Mongolian-Phonetic as an input method in your ibus by running ibus-setup"
echo "        2) then, add Mongolian-Phonetic as a new keyboard insput source in you keyboard settings."