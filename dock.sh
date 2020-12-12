#!/bin/sh
apt update
echo "+++++++++++++++++++++++++++++++++++++++++"
echo "Installing utilities!"
echo "+++++++++++++++++++++++++++++++++++++++++"
sudo apt install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common
echo "+++++++++++++++++++++++++++++++++++++++++"
echo "Adding GPG Key!"
echo "+++++++++++++++++++++++++++++++++++++++++"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
echo "+++++++++++++++++++++++++++++++++++++++++"
echo "Update Docker Debian repository!"
echo "+++++++++++++++++++++++++++++++++++++++++"
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt update
echo "+++++++++++++++++++++++++++++++++++++++++"
echo "Docker installation begins!"
echo "+++++++++++++++++++++++++++++++++++++++++"
apt install -y docker-ce
docker container run hello-world
echo "+++++++++++++++++++++++++++++++++++++++++"
echo "Docker Installation complete!"
docker --version
echo "+++++++++++++++++++++++++++++++++++++++++"

## Run Docker command without Sudo (#Optional)
sudo usermod -aG docker $(whoami)
