FROM nginx
COPY nginx/default /etc/nginx/sites-available/default
COPY nginx/default /etc/nginx/sites-enabled/default
