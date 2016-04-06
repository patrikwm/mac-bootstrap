#!/bin/bash

# clear terminal screen
clear

# define variables
declare version='0.1'
declare update=true
declare source_dir=~/.osx-bootstrap
declare source_file=$source_dir/.osx-bootstrap
declare source_file_tmp=$source_dir/.osx-bootstrap-tmp

# Require sudo extend sudo timestamp for 5 more minutes
sudo -v
# sudo keepalive
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &


# we need to download the repo for the absolute paths
if [[ ! -d ~/.osx-bootstrap ]]; then
    echo '##### Downloading Bootstrap...'
	# autoupdate bootstrap file
	git clone https://github.com/patrikwm/mac-bootstrap.git $source_dir
	# hide folder
	chflags hidden $source_dir
else
	# update repo
    echo '##### Running Bootstrap Updates...'
	cd $source_dir
	git pull origin master
fi

# should we update
[[ update ]] && cp -rf $source_dir/install.sh $source_file_tmp && chmod +x $source_file

# clear terminal screen
clear

# start bootstrap
echo '-------------------'
echo 'OSX Bootstrap' $version
echo '-------------------'

# create bootstrap tmp
[[ ! -f $source_file ]] && cp -rf $source_dir/install.sh $source_file_tmp
# update timestamp
echo 'LAST_EPOCH=$(_current_epoch)' > ~/.osx-bootstrap/.osx-update

# include system with param $1
source $source_dir/core/system.sh $1
# install brew
source $source_dir/core/software.sh
# install python
source $source_dir/core/python.sh
# install quicklook for OSX finder
source $source_dir/core/quicklook.sh
# install development folders
source $source_dir/core/development.sh
# install chef
source $source_dir/core/chef.sh
# install defaults
source $source_dir/core/default.sh
# install github
source $source_dir/core/github.sh
# place your extras here

# create bootstrap file
[[ ! -f $source_file || -f $source_file_tmp ]] && mv $source_file_tmp $source_file && chmod +x $source_file

# done
echo ''
cowsay 'Bootstrapp Ready!'
echo ''

# reboot after installation is done
`sudo fdesetup isactive`
if [[ $? != 0 ]]; then
    read -p "##### Do you want to reboot? [Yn]" -n 1 -r
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        echo ''
        sudo reboot
    fi
fi