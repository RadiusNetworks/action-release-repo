FROM ruby:2.6.4

RUN mkdir /app
WORKDIR /app

RUN gem install bundler
ADD Gemfile Gemfile.lock /app/
RUN bundle install -j 8

ADD . /app

ENTRYPOINT ["ruby", "entrypoint.rb"]
