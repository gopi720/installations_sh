# update the cache
sudo apt update -y

# install java
sudo apt install -y openjdk-11-jdk

# adding gpgkey to your system
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key |sudo gpg --dearmor -o /usr/share/keyrings/jenkins.gpg

#let’s append the Debian package repository address to the server’s sources.list
sudo sh -c 'echo deb [signed-by=/usr/share/keyrings/jenkins.gpg] http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'

#update the apt repository
sudo apt update -y

#install Jenkins and its dependencies
sudo apt install -y jenkins