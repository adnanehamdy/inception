 FROM debian:buster

 RUN apt update -y &&  apt install nginx -y && apt install openssl -y   \
 &&  openssl req -x509 \
 -subj "/C=Ma/ST=bg/L=bg/O=1337/CN=localhost" \
  -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key \
  -out /etc/ssl/certs/nginx-selfsigned.crt;
#  RUN mv /etc/nginx/nginx.conf /etc/nginx/origin.conf

 COPY nginx.conf /etc/nginx/conf.d/nginx.conf

 CMD ["/usr/sbin/nginx", "-g", "daemon off;"]