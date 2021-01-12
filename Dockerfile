FROM ruby:2.6.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
#「-qqオプション」はエラー以外何も吐かないことを意味する。
#「-y」オプションは全部yesで実行することを意味する。

RUN mkdir /l-mgmt
WORKDIR /l-mgmt

COPY Gemfile /l-mgmt/Gemfile
COPY Gemfile.lock /l-mgmt/Gemfile.lock

RUN bundle install
COPY . /l-mgmt
