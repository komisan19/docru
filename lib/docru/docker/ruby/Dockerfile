FROM ruby:2.6-alpine
RUN apk update && \
    apk upgrade && \
    apk add --update --no-cache --virtual=.build-dependencies \
      curl-dev \
      ruby-dev \
      zlib-dev && \
    apk add --update --no-cache \
      bash \
      git \
      openssh
ENV TZ Asia/Tokyo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
ENV LANG C.UTF-8
WORKDIR /myapp
RUN gem install bundler \
&& gem install pry
COPY . .
