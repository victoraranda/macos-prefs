#!/bin/bash

# .bash_profile

# Initially for MacOS Mojave 10.14.x
# Updated for MacOS 12.6

#-------------------------------------------------------------------------------------------------------------------
# Prompt

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h \[\033[33;1m\]\w\[\033[m\]\n\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

#-------------------------------------------------------------------------------------------------------------------
# Aliases 

# General
alias ls='ls -GFh'
alias apt-get='sudo apt-get'
alias ..='cd ..'
alias path='echo -e ${PATH//:/\\n}'
alias untar='tar -zxvf '
alias ping='ping -c 5'
alias ipi='ipconfig getifaddr en0'

# Colorize the grep command output for ease of use (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# Generate sha digest
alias sha1='openssl sha1'
alias sha256='openssl sha256'

# Colorize diff output
alias diff='colordiff'

# Network stuff
alias ports='netstat -tulanp'

# Personal file management
#alias dl='/bin/bash ~/Dropbox/Shares/Victor-Common/Scripts/mac/copyfiles.sh'
alias updatedb='sudo /usr/libexec/locate.updatedb'

# Jupyter stuff
#alias nb='(jupyter notebook --notebook-dir=~/Dropbox/Grad\ School/)'

# use system python
#alias python=/usr/bin/python


#-------------------------------------------------------------------------------------------------------------------
# execute .bashrc (including Path)
if [ -f $HOME/.bashrc ]; then
        source $HOME/.bashrc
fi

##############myweather function#######
weather(){
if [ -z $1 ]; then
curl wttr.in
else
curl wttr.in/~$1
fi
}
