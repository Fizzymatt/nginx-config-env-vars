FROM nginx:1.13.8-alpine-perl
LABEL maintainer="Fizzymatt"

EXPOSE 80

ADD ./nginx/etc/nginx/nginx.conf /etc/nginx/nginx.conf

RUN rm /etc/nginx/conf.d/default.conf
