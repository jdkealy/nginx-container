#!/bin/bash
env
printenv
echo "PORT"
echo  $API_PORT_3000_TCP_ADDR
echo "PORT"
sed -i 's/APP_IP/'"$APP_PORT_3000_TCP_ADDR"'/g' /etc/nginx/sites-enabled/api.myapp.com
echo "PORT"
echo  $API_PORT_3000_TCP_ADDR
echo "PORT"

echo "START"

service nginx start
