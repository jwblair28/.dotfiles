#!/bin/bash

# Remove the .nanorc file from the user's home directory if it exists
if [[ -f ~/.nanorc ]]; then
	        rm ~/.nanorc
		    echo "Removed .nanorc file from home directory."
	    else
		        echo ".nanorc file does not exist, skipping removal."
fi

# Remove the line 'source ~/.dotfiles/etc/bashrc custom' from the .bashrc file
sed -i '/source ~\/.dotfiles\/etc\/bashrc custom/d' ~/.bashrc
echo "Removed 'source ~/.dotfiles/etc/bashrc custom' from .bashrc."

# Remove the .TRASH directory from the user's home directory if it exists
if [[ -d ~/.TRASH ]]; then
	        rm -r ~/.TRASH
		    echo "Removed .TRASH directory from home directory."
	    else
		        echo ".TRASH directory does not exist, skipping removal."
fi
