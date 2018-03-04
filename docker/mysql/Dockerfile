FROM mysql:5.7.21
LABEL  maintainer "k-waragai <kazuxtuna@gmail.com>"

# Initial command
RUN apt-get update && \
    apt-get install -y apt-utils locales

RUN rm -rf /var/lib/apt/lists/*
RUN echo "ja_JP.UTF-8 UTF-8" > /etc/locale.gen

# Charset
ADD ./docker/config/charset.cnf /etc/mysql/conf.d/charset.cnf