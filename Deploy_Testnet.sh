
### Install dep
echo "########################"
echo "Installing depedencies"
echo "########################"
### Update System and install dependencies
sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y dist-upgrade
sudo apt-get -y install wget nano git unrar unzip

### Install Firewall
echo "########################"
echo "Installing Firewall"
echo "########################"
sudo ufw allow 22/tcp
sudo ufw limit 22/tcp
sudo ufw allow 21212/tcp
sudo ufw logging on
sudo ufw --force enable
sudo ufw status



### Install PZDC
echo "########################"
echo "Installing PZDC"
echo "########################"
sudo mkdir pzdc
cd pzdc
sudo wget https://github.com/pzdc-crypto/pzdc/releases/download/v1.1.0.6/pzdcd-linux64
sudo wget https://github.com/pzdc-crypto/pzdc/releases/download/v1.1.0.6/pzdc-cli-linux64
mv ./pzdcd-linux64 pzdcd
mv ./pzdcd-cli-linux64 pzdc-cli
chmod +x p*

### Install temp config
echo "########################"
echo "Create temporary PZDC config"
echo "########################"
cd ~
mkdir .pzdc
nano pzdc.conf

