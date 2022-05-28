#syntax=docker/dockerfile:1
FROM ubuntu:latest

LABEL "AUTHOR"="Maris Vilims" "COMPANY"="TestDevLab"

RUN apt update
RUN apt -y install ruby-dev libffi-dev autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm6 libgdbm-dev libdb-dev libmysqlclient-dev
RUN gem install bundler

WORKDIR /usr/src/api-tests

COPY Gemfile ./
COPY features features
COPY smoke_tests.sh ./

RUN bundle install
RUN mkdir test-output
