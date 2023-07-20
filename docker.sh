# update your existing list of packages
sudo apt update -y

# install a few prerequisite packages which let apt use packages over HTTPS;
sudo apt install apt-transport-https ca-certificates curl software-properties-common

# add the GPG key for the official Docker repository to your system
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

#Add the Docker repository to APT sources
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"

#Make sure you are about to install from the Docker repo instead of the default Ubuntu repo:
apt-cache policy docker-ce

# install Docker:
sudo apt install docker-ce

#If you want to avoid typing sudo whenever you run the docker command, add your username to the docker group:
sudo usermod -aG docker ${USER}

#restart tha system