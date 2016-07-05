FROM ubuntu:14.04
RUN apt-get update && apt-get install -y nano htop git nginx

ADD nginx.conf /etc/nginx/nginx.conf
ADD sites-enabled/api.myapp.conf /etc/nginx/sites-enabled/api.myapp.conf
ADD sites-enabled/app.myapp.conf /etc/nginx/sites-enabled/app.myapp.conf
ADD Nginx-Startup.sh /etc/nginx/Nginx-Startup.sh

EXPOSE 80 443

CMD ["/bin/bash","/etc/nginx/Nginx-Startup.sh"]
