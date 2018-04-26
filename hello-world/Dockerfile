FROM ruby:alpine3.7

ENV APP_HOME /home/app
WORKDIR APP_HOME

RUN gem install bundler
COPY log.txt log.txt
COPY Gemfile* ./
RUN bundle install --without=development,test
COPY app.rb ./
ENTRYPOINT ruby app.rb
