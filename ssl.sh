#!/bin/bash
echo Enter a valid Domain Name:
read FQDN
sleep 5
echo Enter a valid email:
read email
# Install SSL
apt update
apt install snapd
snap install core; snap refresh core
snap install --classic certbot
ln -s /snap/bin/certbot /usr/bin/certbot
#Clear
clear
#Install Domain
sudo certbot certonly --standalone --preferred-challenges http --agree-tos --email $email -d $FQDN
#End
echo "SSL Setup Done !"
# Remove File
rm -r ssl.sh
#End
sleep 10
