#!/bin/bash

# copyfiles.sh

# Victor Aranda, Jan 2018
# MacOS Mojave 10.14.x

#-------------------------------------------------------------------------------------------------------------------

# Back up local files
# cp ~/.bash_profile ~/.bash_profile_bak
# cp ~/.bashrc ~/.bashrc_bak

# Replace local bash configuration files
# chflags nohidden ~/.bash_profile
# chflags nohidden ~/.bashrc
# cp ../.bash_profile ~
# cp ../.bashrc ~
# chflags hidden ~/.bash_profile
# chflags hidden ~/.bashrc
# chflags hidden ~/.bash_profile_bak
# chflags hidden ~/.bashrc_bak

#-------------------------------------------------------------------------------------------------------------------
# Sudo
# Replace sudo config file to permit TouchID as an auth factor
sudo cp ../sudo /etc/pam.d/

echo 'Done!'
