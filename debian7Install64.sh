#!/bin/sh

sudo apt-get install curl build-essential linux-headers-amd64 git-all htop dos2unix vim python-dev python-pip \
  autoconf automake autotools-dev debhelper lintian pbuilder git-buildpackage \
  ruby-dev rubygems lftp gftp filezilla mc syslinux nfs-kernel-server asciidoc


## grab google chrome, dropbox, sublime text, vagrant, skype
## add user with visudo


git config --global user.name "Ryan P.C. McQuen"
git config --global user.email "ryanpcmcquen@gmail.com"
git config --global credential.helper cache
ssh-keygen -t rsa -C "ryanpcmcquen@gmail.com"
ssh-add id_rsa

sudo pip install ansible pip-tools


su
touch /etc/apt/sources.list.d/vbox.list
echo "deb http://download.virtualbox.org/virtualbox/debian wheezy contrib" >> /etc/apt/sources.list.d/vbox.list
exit
wget -q http://download.virtualbox.org/virtualbox/debian/oracle_vbox.asc -O- | sudo apt-key add -


echo "
 ## my aliases
alias aptu='sudo apt-get update && sudo apt-get dist-upgrade -y'
alias aptc='sudo apt-get autoclean && sudo apt-get clean && sudo apt-get autoremove -y'
alias apti='sudo apt-get install '" >> ~/.bashrc