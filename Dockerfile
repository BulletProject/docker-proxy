FROM nginx

MAINTAINER haniokasai <htek@haniokasai.com>

ADD default.conf.template /etc/nginx/conf.d/default.conf.template

ENTRYPOINT /bin/sh -c "envsubst < /etc/nginx/conf.d/default.conf.template > /etc/nginx/nginx.conf && nginx -g 'daemon off;'" 
