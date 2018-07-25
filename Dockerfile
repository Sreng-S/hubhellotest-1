FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /hubhelloTest
WORKDIR /hubhelloTest
COPY Gemfile /hubhelloTest/Gemfile
COPY Gemfile.lock /hubhelloTest/Gemfile.lock
RUN bundle install
COPY . /hubhelloTest
