sudo apt-get install -y curl
sudo apt-get install -y php libapache2-mod-php php-mcrypt php-mysql php-cli
sudo apt-get install -y python-software-properties
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt-get install -y apache2
sudo systemctl restart apache2


# tsk tsk tsk
cd ~
mkdir Tools
cd Tools
sudo apt-get -y install software-properties-common python-software-properties
sudo add-apt-repository ppa:webupd8team/atom
sudo apt-get update
sudo apt-get -y install atom


