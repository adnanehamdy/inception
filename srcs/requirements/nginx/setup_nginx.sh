#!/bin/bash
sed -i "s|_crt_|$CERTS|" /etc/nginx/conf.d/nginx.conf
sed -i "s|_key_|$KEY|" /etc/nginx/conf.d/nginx.conf
/usr/sbin/nginx -g "daemon off;"