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

#Some better stuff to install on it too, also some thinkpad stuff
sudo apt-get install lm-sensors
## thinkfan
sudo apt-get install thinkfan
echo "options thinkpad_acpi fan_control=1" > /etc/modprobe.d/thinkfan.conf
modprobe thinkpad_acpi
systemctl enable thinkfan

#trackpad fix
xinput --set-prop "SynPS/2 Synaptics TouchPad" "Synaptics Noise Cancellation" 20 20

#screen tearing
sudo mkdir /etc/X11/xorg.conf.d/
echo -e 'Section "Device" \n Identifier "Intel Graphics" \n Driver "Intel" \n Option "TearFree" "true" \nEndSection' | sudo tee /etc/X11/xorg.conf.d/20-intel.conf


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
sudo apt-get -y install spotify-client --allow-unauthenticated

# Elementary Tweak
## 1. adding repository
sudo add-apt-repository ppa:philip.scott/elementary-tweaks -y
## 2. updating apt-get
sudo apt-get -y update 
## 3. installing tweaks
sudo apt-get -y install elementary-tweaks
## 4. installing wallpapers
sudo apt-get -y install elementary-wallpapers-extra

cd ~/
mkdir Source
cd ~/Source
git clone https://github.com/vooze/arc-black-ubuntu
cd arc-black-ubuntu
sudo cp -R arc-black-ubuntu* /usr/share/themes

sudo add-apt-repository ppa:numix/ppa
sudo apt-get update
sudo apt-get -y install numix-icon-theme-circle

#tsk tsk tsk bash bro, bash
cd ~/
git clone git@github.com:lightyoruichi/bashrc.git .