FROM debian:bookworm

RUN apt-get update && apt-get install -y nginx && apt-get install -y openssl && mkdir -p /etc/nginx/ssl /run/nginx

COPY /nginx.conf /etc/nginx/conf.d/nginx.conf

RUN openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes \
    -out /etc/nginx/ssl/umosse.crt \
    -keyout /etc/nginx/ssl/umosse.key \
    -subj "/C=FR/ST=Paris/L=Paris/O=42 Paris/OU=umosse/CN=umosse/"

CMD [ "nginx", "-g", "daemon off;" ]