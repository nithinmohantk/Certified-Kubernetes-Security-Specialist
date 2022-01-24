sudo apt install unzip
sudo wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-amd64 -O /usr/local/bin/oh-my-posh
sudo chmod +x /usr/local/bin/oh-my-posh


mkdir ~/.poshthemes
wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/themes.zip -O ~/.poshthemes/themes.zip
unzip ~/.poshthemes/themes.zip -d ~/.poshthemes
sudo chmod u+rw ~/.poshthemes/*.json
rm ~/.poshthemes/themes.zip

cp /home/ubuntu/.poshthemes/blueish.omp.json /home/ubuntu/blueish.omp.json
sudo chmod 777 /usr/local/bin/oh-my-posh


#eval "$(/usr/local/bin/oh-my-posh --init --shell bash --config ~/.poshthemes/blueish.omp.json)"

echo 'set tabstop=2' > ~/.bashrc
echo 'set shiftwidth=2' > ~/.bashrc
echo 'set expandtab' > ~/.bashrc
echo 'eval "$(/usr/local/bin/oh-my-posh --init --shell bash --config ~/.poshthemes/blueish.omp.json)"' > ~/.bashrc
#echo 'eval "$(/usr/local/bin/oh-my-posh --init --shell bash --config ~/.poshthemes/blueish.omp.json)"' > ~/.bash_profile
#echo 'eval "$(/usr/local/bin/oh-my-posh --init --shell bash --config ~/.poshthemes/blueish.omp.json)"' > ~/.profile
source ~/.bashrc
