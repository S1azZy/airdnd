FROM ruby:2.5.3

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev  cmake

# Node.js
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash - \
    && apt-get install -y nodejs
RUN apt-get update && apt-get install -y curl apt-transport-https wget && \
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt-get update && apt-get install -y yarn

RUN mkdir /airdnd
WORKDIR /airdnd
COPY Gemfile /airdnd/Gemfile
COPY Gemfile.lock /airdnd/Gemfile.lock
RUN bundle install --jobs 4
COPY . /airdnd