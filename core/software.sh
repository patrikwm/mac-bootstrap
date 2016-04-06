#!/bin/bash

# Install Xcode with Command line tools
xcode-select --install

# install homebrew 
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
echo "export PATH=/usr/local/bin:/usr/local/sbin:$PATH" >> ~/.bash_profile
# Install applications with homebrew
brew update
brew install vagrant
brew install python
brew install python3
brew install pyenv
brew install bash
brew install vim
brew install tree
brew install wget
brew install git
brew install unrar
brew install htop
brew install watch
brew install nmap
brew install tmux
brew install vimpager
brew install bash-completion
brew install bitlbee # https://eklitzke.org/bitlbee-and-hipchat
brew install openconnect
brew cask install xquartz
brew install Caskroom/versions/java7 
brew cask install --appdir="/Applications" virtualbox
brew cask install --appdir="/Applications" sketch
brew cask install --appdir="/Applications" sketch-toolbox
brew cask install --appdir="/Applications" dropbox
brew cask install --appdir="/Applications" google-chrome
brew cask install --appdir="/Applications" cyberduck
brew cask install --appdir="/Applications" evernote
brew cask install --appdir="/Applications" the-unarchiver
brew cask install --appdir="/Applications" bartender
brew cask install --appdir="/Applications" caffeine
brew cask install --appdir="/Applications" ember	
brew cask install --appdir="/Applications" firefox
brew cask install --appdir="/Applications" CommandQ
brew cask install --appdir="/Applications" macdown
brew cask install --appdir="/Applications" alfred
brew cask install --appdir="/Applications" disk-inventory-x
#brew cask install --appdir="/Applications" wunderlist Not working 
brew cask install --appdir="/Applications" handbrake
brew cask install --appdir="/Applications" utorrent
brew cask install --appdir="/Applications" sourcetree
brew cask install --appdir="/Applications" sequel-pro
brew cask install --appdir="/Applications" sqlitebrowser
brew cask install --appdir="/Applications" spectacle
brew cask install --appdir="/Applications" cheatsheet
brew cask install dockertoolbox
brew install docker
brew install boot2docker
brew cask install handbrakecli
brew install coreutils
brew doctor


# Install python pip
pip install --upgrade setuptools
pip install --upgrade pip

# Set up development environment
mkdir -p ~/development/{git_mideye,git_patrik,python,java,ansible,chef,vagrant}

# Install visual studio code
wget https://go.microsoft.com/fwlink/?LinkID=620882 -O visualstudio.zip
unzip visualstudio.zip 
mv "Visual Studio Code.app" /Applications/
rm -rf visualstudio.zip

wget https://download.jetbrains.com/python/pycharm-community-2016.1.dmg
hdiutil attach pycharm-community-2016.1.dmg
cp -R /Volumes/PyCharm\ CE/PyCharm\ CE.app /Applications/
hdiutil detach pycharm-community-2016.1.dmg
rm -rf pycharm-community-2016.1.dmg

wget https://download.jetbrains.com/idea/ideaIC-2016.1.1.dmg
hdiutil attach ideaIC-2016.1.1.dmg
cp -R /Volumes/IntelliJ\ IDEA\ CE/IntelliJ\ IDEA\ CE.app /Applications/
hdiutil detach ideaIC-2016.1.1.dmg
rm -rf ideaIC-2016.1.1.dmg

sudo softwareupdate -i -a

