sudo apt-get update
sudo apt-get -y dist-upgrade

# Properties Commons (to install elementary tweaks
sudo apt-get -y install software-properties-common

#Install File Compression Libs
sudo apt-get -y install rar unrar zip unzip p7zip-full p7zip-rar

# GIT
sudo apt-get -y install git

# HTOP
sudo apt-get -y install htop
# GParted
sudo apt-get -y install gparted
sudo apt-get -y install transmission
sudo apt-get -y install openjdk-8-jdk


#Reduce overheating and improve battery life
## 1. adding repository
sudo add-apt-repository ppa:linrunner/tlp -y
## 2. updating apt-get
sudo apt-get update
## 3. installing package
sudo apt-get -y install tlp tlp-rdw
## 4. starting application
sudo tlp start

sudo apt-get autoremove
sudo apt-get autoclean

# Google Chrome
## 1. downloading last stable package
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
## 2. installing package
sudo dpkg -i google-chrome-stable_current_amd64.deb
## 3. fixing broken dependencies
sudo apt-get -y install -f

#Install Spotify
## 1. Add the Spotify repository signing key to be able to verify downloaded packages
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886 -y
## 2. Add the Spotify repository
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list 
## 3. Update list of available packages
sudo apt-get update
## 4. Install Spotify
sudo apt-get -y install spotify-client

# Elementary Tweak
## 1. adding repository
sudo add-apt-repository ppa:philip.scott/elementary-tweaks -y
## 2. updating apt-get
sudo apt-get -y update 
## 3. installing tweaks
sudo apt-get -y install elementary-tweaks
## 4. installing wallpapers
sudo apt-get -y install elementary-wallpapers-extra

sudo apt -y install git unity-tweak-tool gnome-themes-standard gtk2-engines-murrine
cd ~/
mkdir Source
cd ~/Source
git clone https://github.com/vooze/arc-black-ubuntu
cd arc-black-ubuntu
sudo cp -R arc-black-ubuntu* /usr/share/themes

sudo add-apt-repository ppa:numix/ppa
sudo apt-get update
sudo apt-get -y install numix-icon-theme-circle