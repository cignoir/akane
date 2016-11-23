FROM ruby:2.3.0
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev
RUN mkdir /akane
WORKDIR /akane
ADD Gemfile /akane/Gemfile
ADD Gemfile.lock /akane/Gemfile.lock
RUN bundle install
ADD . /akane
