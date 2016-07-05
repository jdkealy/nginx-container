#!/bin/bash
sed -i 's/APP_IP/'"$API_PORT_3001_TCP_ADDR"'/g' /etc/nginx/sites-enabled/default
sed -i 's/APP_IP/'"$APP_PORT_3002_TCP_ADDR"'/g' /etc/nginx/sites-enabled/default

service nginx start
