FROM nginx
COPY nginx.conf /etc/nginx/nginx.conf
COPY nginx/default /etc/nginx/sites-available/default
COPY nginx/default /etc/nginx/sites-enabled/default
ADD Nginx-Startup.sh /etc/nginx/Nginx-Startup.sh
EXPOSE 80 443
CMD ["/bin/bash","/etc/nginx/Nginx-Startup.sh"]
