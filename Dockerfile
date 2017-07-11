FROM ruby:2.3
RUN mkdir /src
WORKDIR /src
ADD . /src/
RUN gem install bundler
RUN bundle install
