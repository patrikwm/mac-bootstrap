#!/bin/bash

# Install Xcode with Command line tools
xcode-select --install

# install homebrew 
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
echo "export PATH=/usr/local/bin:/usr/local/sbin:$PATH" >> ~/.bash_profile
# Install default commandlineapplications with homebrew
brew update # Always good to do
brew install bash
brew install vim
brew install tree
brew install wget
brew install git
brew install unrar
brew install htop
brew install watch # watch ls -al monitors a directory
brew install nmap
brew install tmux
brew install bash-completion
brew install homebrew/dupes/tcpdump # /usr/local/Cellar/tcpdump/4.7.4/sbin
brew install coreutils
brew install bitlbee # https://eklitzke.org/bitlbee-and-hipchat
brew install openconnect #Anyconnect client for terminal
,00
brew cask install xquartz #Allow OSX to run X software (ssh -X)
brew install Caskroom/versions/java7 
#brew cask install --appdir="/Applications" hipchat # Non working
#Virtualisation
brew cask install --appdir="/Applications" virtualbox
brew cask install vagrant
brew cask install --appdir="/Applications" vagrant-manager
brew install homebrew/completions/vagrant-completion
brew cask install --appdir="/Applications" vagrant-bar
brew cask install dockertoolbox
brew install docker
brew install boot2docker

# Install Web browsers
brew cask install --appdir="/Applications" google-chrome
brew cask install --appdir="/Applications" firefox
brew cask install --appdir="/Applications" opera

# Cloud providers
brew cask install --appdir="/Applications" dropbox
brew cask install --appdir="/Applications" evernote

# utilities
brew cask install --appdir="/Applications" cyberduck # SFTP / FTP filetransfer
brew cask install --appdir="/Applications" the-unarchiver # Extract all filetypes
brew cask install --appdir="/Applications" caffeine # Set Mac to not sleep
brew cask install --appdir="/Applications" alfred # Adds enhanced search ALT + Space
brew cask install --appdir="/Applications" CommandQ # Adds delay to Command Q shortcut
brew cask install --appdir="/Applications" disk-inventory-x # Search disk for large files
brew cask install --appdir="/Applications" spectacle # Lets you resize windows with shortcut
brew cask install --appdir="/Applications" cheatsheet # Hold CMD to get cheatsheet of shortcuts
brew cask install --appdir="/Applications" wireshark
brew cask install --appdir="/Applications" yed
brew cask install spideroakone
brew cask install ansible 

# Editor
brew cask install --appdir="/Applications" macdown

# Misc
brew cask install --appdir="/Applications" handbrake
brew cask install handbrakecli
brew cask install --appdir="/Applications" utorrent # needs to be installed manually afterwards.

# Programming
brew cask install --appdir="/Applications" sourcetree
brew cask install --appdir="/Applications" sequel-pro
brew cask install --appdir="/Applications" sqlitebrowser

brew doctor # make sure homebrew is working.

# Unused software
#brew cask install --appdir="/Applications" sketch
#brew cask install --appdir="/Applications" sketch-toolbox
#brew cask install --appdir="/Applications" ember	
#brew cask install --appdir="/Applications" bartender


# Install visual studio code
wget https://go.microsoft.com/fwlink/?LinkID=620882 -O visualstudio.zip
unzip visualstudio.zip 
mv "Visual Studio Code.app" /Applications/
rm -rf visualstudio.zip

# wget https://download.jetbrains.com/python/pycharm-community-2016.1.dmg
# hdiutil attach pycharm-community-2016.1.dmg
# cp -R /Volumes/PyCharm\ CE/PyCharm\ CE.app /Applications/
# hdiutil detach pycharm-community-2016.1.dmg
# rm -rf pycharm-community-2016.1.dmg

# wget https://download.jetbrains.com/idea/ideaIC-2016.1.1.dmg
# hdiutil attach ideaIC-2016.1.1.dmg
# cp -R /Volumes/IntelliJ\ IDEA\ CE/IntelliJ\ IDEA\ CE.app /Applications/
# hdiutil detach ideaIC-2016.1.1.dmg
# rm -rf ideaIC-2016.1.1.dmg


