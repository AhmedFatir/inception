#!/bin/bash

#---------------------------------------------------zsh---------------------------------------------------#

chsh -s $(which zsh)
wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
echo "alias zshi='sh /install.sh'" >> ~/.zshrc

#---------------------------------------------------mariadb start---------------------------------------------------#

service mariadb start
sleep 5

#---------------------------------------------------mariadb config---------------------------------------------------#

mariadb -e "CREATE DATABASE IF NOT EXISTS \`${MYSQL_DB}\`;"
mariadb -e "CREATE USER IF NOT EXISTS \`${MYSQL_USER}\`@'%' IDENTIFIED BY '${MYSQL_PASSWORD}';"
mariadb -e "GRANT ALL PRIVILEGES ON ${MYSQL_DB}.* TO \`${MYSQL_USER}\`@'%';"
mariadb -e "FLUSH PRIVILEGES;"

#---------------------------------------------------mariadb restart---------------------------------------------------#

mysqladmin -u root -p$MYSQL_ROOT_PASSWORD shutdown
mysqld_safe --port=3306 --bind-address=0.0.0.0 --datadir='/var/lib/mysql'
