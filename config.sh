#!/bin/bash

PREFEREDSHELL="bash"

# set custom prompt
echo 'PS1="\e[0;37m\w> \e[00m"' >> ~/."$PREFEREDSHELL"rc
echo 'PS2="\e[1;37m > \e[00m"' >> ~/."$PREFEREDSHELL"rc

sudo apt install build-essential
sudo apt install valgrind
sudo apt install git

# configure GIT profile
echo '[user]
	email = jaksmutny@gmail.com
	name = Jakub Smutný
[init]
	defaultBranch = master
[alias]
	ll = log --oneline --graph --all --decorate
[push]
	default = simple' > ~/.gitconfig

# generate and output SSH key
echo "SSH Keygen: (3x Enter)"
ssh-keygen -t rsa -b 4096
echo "--- SSH PUBLIC KEY ---"
cat ~/.ssh/id_rsa.pub
echo "----------------------"


#   # Shortcut to remote SSH host
#   echo 'Host fray1
#       HostName fray1.fit.cvut.cz
#       User smutnjak
#       HostKeyAlgorithms=+ssh-rsa
#       PubKeyAcceptedKeyTypes=+ssh-rsa
#   ' >> ~/.ssh/config

#   # Homebrew
#   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
#   eval "$(/opt/homebrew/bin/brew shellenv)" # Set PATH, MANPATH, etc., for Homebrew.

# make developer folder
mkdir ~/dev
