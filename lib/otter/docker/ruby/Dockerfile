FROM ruby:latest
RUN apt-get -y update &&\
    apt-get -y upgrade &&\ 
    apt-get -y autoremove
ENV TZ Asia/Tokyo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
ENV LANG C.UTF-8
WORKDIR /myapp
RUN gem install bundler \
COPY . .
