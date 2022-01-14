#Install-Docker.sh
sudo apt update

sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
apt-cache policy docker-ce

sudo apt install -y docker-ce docker-ce-cli containerd.io docker-compose 
sudo systemctl start docker 
sudo systemctl enable docker
docker --version

sudo usermod -aG docker ${USER}
su - ${USER}

docker run hello-world

sudo adduser nithinkadumberi
sudo usermod -aG adm nithinkadumberi 
sudo usermod -aG sudo nithinkadumberi 
sudo usermod -aG docker nithinkadumberi
id nithinkadumberi


