#!/bin/bash
cd /var/alertlogic/ui/src/AlertLogic
git stash && git checkout master && git fetch && git reset --hard origin/master && git pull --rebase origin master && for ((i = 0; i <= (($RANDOM % 10)) + 1; i++)); do (echo -ne "." && sleep 1); done
echo ""
sleep $(($RANDOM % 10))
for dir in ./*; do (cd "$dir" && git stash && git checkout master && git fetch && git reset --hard origin/master && git pull --rebase origin master && for ((i = 0; i <= (($RANDOM % 10)) + 1; i++)); do (echo -ne "." && sleep 1); done && echo "" && sleep sleep $(($RANDOM % 10))); done
cd /var/www/invision
sudo rm -rf /var/bak
sudo mkdir /var/bak/
sudo cp /var/www/invision/perl/config.conf /var/bak/
sudo cp /var/www/invision/setup/config.php /var/bak/
sudo cp /var/www/invision/setup/database_config.php /var/bak/
git stash && git checkout master && git fetch && git reset --hard origin/master && git pull --rebase origin master && for ((i = 0; i <= (($RANDOM % 10)) + 1; i++)); do (echo -ne "." && sleep 1); done
echo ""
sleep sleep $(($RANDOM % 10))
robo clean legacy
robo clean ng
sudo rm /var/www/invision/perl/config.conf
sudo rm /var/www/invision/setup/database_config.php
sudo rm /var/www/invision/setup/config.php
sudo cp /var/bak/config.conf /var/www/invision/perl/
sudo cp /var/bak/config.php /var/www/invision/setup/
sudo cp /var/bak/database_config.php /var/www/invision/setup/
sudo rm -rf /var/bak
for ((i = 0; i <= (($RANDOM % 16)) + 1; i++)); do (echo -ne "." && sleep 1); done
echo ""
sleep $(($RANDOM % 20))
cat /sh/done_message.txt
