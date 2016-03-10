FROM ruby:2.2

MAINTAINER Mark Kreyman <mark@kreyman.com>

EXPOSE 8000

RUN mkdir -p /usr/src/app
COPY . /usr/src/app
WORKDIR /usr/src/app

RUN bundle install

CMD ["ruby","app.rb"]
