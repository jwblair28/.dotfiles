# My Dotfiles
These are my dotfile configuration files for different software in Bash.
## ./etc/nanorc
This is my custom .nanorc configuration for Nano.
## ./etc/bashrc
This is my custom .bashrc configuration for Bash.
## ./bin/linux.sh
This script checks if the machine is running Linux and then sets up
configurations for bash and nano as well as creating necessary directories
including the TRASH directory
## ./bin/cleanup.sh
This script cleansup everything done in the linux.sh script, including
the configs and directories created.
## ./Makefile
This Makefile allows us to run the linux.sh and cleanup.sh scripts, making sure
that they execute in the necessary order and are easier to execute.
