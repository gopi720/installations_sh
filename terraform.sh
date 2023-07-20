# add the gpg key to your system
wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg

# Validate the Authentication Process;
gpg --no-default-keyring  --keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg --fingerprint

#Add the Repository
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg]  https://apt.releases.hashicorp.com $(lsb_release -cs) main" |  sudo tee /etc/apt/sources.list.d/hashicorp.list

#Update the Packages
sudo apt update -y

#install terraform
sudo apt install -y terraform
