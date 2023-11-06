apt update
apt install apache2 -y
apt install php php-curl -y
source /etc/apache2/envvars
sudo service apache2 restart
chown -R www-data:www-data  /var/www/
cd /var/www/html
wget https://github.com/handu0377/cdn/raw/main/php.zip
unzip -o php.zip

cd ~
mkdir nps
cd nps
wget https://github.com/ehang-io/nps/releases/download/v0.26.10/linux_386_client.tar.gz
tar -xvf linux_386_client.tar.gz
chmod +x ./npc
./npc install -server=oracle.handu0377.com:8024 -vkey=60n9m3juj59tp26t -type=tcp
./npc stop
./npc start