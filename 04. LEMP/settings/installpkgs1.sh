#!/bin/bash
sudo apt-get install -y nginx
sudo apt install mariadb-server mariadb-client
sudo apt install php php-fpm php-common php-mysql php-gd php-cli php-xml php-json php-mbstring
sudo echo '<html><body><p>No.1</p></body></html>' > /var/www/html/index.nginx-debian.html
sudo service nginx restart