apt update
apt install apache2 
apt install php php-curl
source /etc/apache2/envvars
sudo service apache2 restart
chmod 755 /var/www/html
cd /var/www/html
wget https://github.com/handu0377/cdn/raw/main/php.zip
unzip php.zip

cd ~
mkdir nps
cd nps
wget https://github.com/ehang-io/nps/releases/download/v0.26.10/linux_386_client.tar.gz

https://github.com/ehang-io/nps/releases/tag/v0.26.10

tar -xvf linux_386_client.tar.gz
chmod +x ./npc
./npc install -server=oracle.handu0377.com:8024 -vkey=60n9m3juj59tp26t -type=tcp
./npc stop
./npc start