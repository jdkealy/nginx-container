#!/bin/bash
sed -i 's/APP_IP/'"$API_PORT_3000_TCP_ADDR"'/g' /etc/nginx/sites-enabled/api.myapp.com
sed -i 's/APP_IP/'"$APP_PORT_3001_TCP_ADDR"'/g' /etc/nginx/sites-enabled/app.myapp.com

service nginx start
