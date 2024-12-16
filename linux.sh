#!/bin/bash

# Check if the operating system type is Linux or not, then log it.
if [[ $(uname) != "Linux" ]]; then
	        echo "Error: This script is intended for Linux systems only." >> linuxsetup.log
		    exit 1
	    	else
			    echo "Linux setup script is running on a Linux system." >> linuxsetup.log
fi

# Create the '.TRASH' directory in the user's home directory if it doesn't already exist
mkdir -p ~/".TRASH"

# Check if '.nanorc' exists in the user's home directory and rename if applicable
if [[ -f ~/.nanorc ]]; then
	        mv ~/.nanorc ~/.bup\ nanorc
		        echo "The current .nanorc file was renamed to .bup nanorc." >> linuxsetup.log
fi

# Overwrite the contents of 'etc/nanorc' to '~/.nanorc'
cat ~/etc/nanorc > ~/.nanorc

# Add the statement to source the custom bashrc to the end of the .bashrc file
echo "source ~/.dotfiles/etc/bashrc custom" >> ~/.bashrc
