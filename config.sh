#!/bin/bash

# set custom prompt
echo 'PS1="\e[0;37m\w> \e[00m"' >> ~/.bashrc
echo 'PS2="\e[1;37m > \e[00m"' >> ~/.bashrc
echo 'cd ~/Developer/' >> ~/.bashrc

sudo apt install gcc
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

# fingerprint scanner
sudo apt-get install fprintd libpam-fprintd
sudo pam-auth-update --enable fprintd
echo "Fingerprint:"
fprintd-enroll

# logi options alternative for linux
sudo apt install solaar
solaar

#   # Shortcut to remote SSH host
#   echo 'Host fray1
#       HostName fray1.fit.cvut.cz
#       User smutnjak
#       HostKeyAlgorithms=+ssh-rsa
#       PubKeyAcceptedKeyTypes=+ssh-rsa
#   ' >> ~/.ssh/config

# make developer folder
mkdir ~/Developer
