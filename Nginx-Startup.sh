#!/bin/bash
env
printenv
echo  $API_PORT_3000_TCP_ADDR
sed -i 's/APP_IP/'"$APP_PORT_3000_TCP_ADDR"'/g' /etc/nginx/sites-enabled/api.myapp.com

service nginx start
