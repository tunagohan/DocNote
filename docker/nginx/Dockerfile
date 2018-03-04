FROM nginx:1.13.9
LABEL  maintainer "k-waragai <kazuxtuna@gmail.com>"

RUN rm -f /etc/nginx/conf.d/*
ADD ./docker/config/nginx.conf /etc/nginx/conf.d/app.conf
CMD /usr/sbin/nginx -g 'daemon off;' -c /etc/nginx/nginx.conf