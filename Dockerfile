FROM ubuntu
MAINTAINER sylvain (sylvain@mhd.com)
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nginx git
#ADD static-website-example/ /var/www/html/
RUN rm -Rf /var/www/html/*
RUN git clone https://github.com/Libexec69/static-website-example.git /var/www/html/
EXPOSE 80
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
