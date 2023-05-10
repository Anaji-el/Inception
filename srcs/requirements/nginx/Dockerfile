FROM debian:buster


RUN apt-get -y update
RUN apt-get install -y nginx

# && apt-get install openssl -y

COPY ./conf/default /etc/nginx/
RUN nginx -t
CMD ["nginx", "-g", "daemon off;"]