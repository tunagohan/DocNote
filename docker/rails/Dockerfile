FROM ruby:2.5.0
LABEL  maintainer "k-waragai <kazuxtuna@gmail.com>"

# Initial command
RUN apt-get update -qq && \
    apt-get install -y build-essential libpq-dev nodejs

# Rails setting
RUN mkdir /app
WORKDIR /app

ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock
RUN bundle install
ADD . /app
RUN mkdir -p tmp/sockets