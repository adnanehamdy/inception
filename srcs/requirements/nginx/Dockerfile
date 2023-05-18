 FROM debian:buster

 RUN apt update -y &&  apt install nginx -y && apt install openssl -y   \
 &&  openssl req -x509 \
 -subj "/C=Ma/ST=bg/L=bg/O=1337/CN=localhost" \
  -nodes -days 365 -newkey rsa:2048 -keyout ${KEY} \
  -out ${CERTS} \
 && mv /etc/nginx/nginx.conf /etc/nginx/origin.conf

 COPY nginx.conf /etc/nginx/nginx.conf

 CMD ["/usr/sbin/nginx", "-g", "daemon off;"]