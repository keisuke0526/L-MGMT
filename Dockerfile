FROM ruby:2.6.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
#「-qqオプション」はエラー以外何も吐かないことを意味する。
#「-y」オプションは全部yesで実行することを意味する。

RUN mkdir /buggage-mgt
WORKDIR /buggage-mgt

COPY Gemfile /buggage-mgt/Gemfile
COPY Gemfile.lock /buggage-mgt/Gemfile.lock

RUN bundle install
COPY . /buggage-mgt
