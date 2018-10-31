FROM ruby:2.5.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs cmake
RUN mkdir /airdnd
WORKDIR /airdnd
COPY Gemfile /airdnd/Gemfile
COPY Gemfile.lock /airdnd/Gemfile.lock
RUN bundle install -j 8
COPY . /airdnd