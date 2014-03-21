#!/bin/bash
clear
echo "-------------------------------------------------------------------------"
rm /etc/init.d/pm2-init.sh
echo "-------------------------------------------------------------------------"
killall node
echo "-------------------------------------------------------------------------"
pm2 dump
echo "-------------------------------------------------------------------------"
pm2 delete all
echo "-------------------------------------------------------------------------"
pm2 kill
echo "-------------------------------------------------------------------------"
git fetch
git pull origin master
echo "-------------------------------------------------------------------------"
pm2 start app.js -f -i 1 --name ISPTools
echo "-------------------------------------------------------------------------"
pm2 web
echo "-------------------------------------------------------------------------"
pm2 -f startup ubuntu
echo "-------------------------------------------------------------------------"
echo "OK"
