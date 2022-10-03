FROM ubuntu:18.04

RUN apt update && \
    apt install -y ruby-full build-essential zlib1g-dev git

ENV GEM_HOME="$HOME/gems"
ENV PATH="$HOME/gems/bin:$PATH"

COPY . /app

RUN gem install jekyll && \
    gem install bundler -v 1.17.2 && \
    cd /app && \
    bundle install
