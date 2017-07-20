FROM        versioneye/ruby-base:2.3.3-3
MAINTAINER  Robert Reiz <reiz@versioneye.com>

RUN rm -Rf /app; \
    mkdir /app

ADD . /app

RUN cd /app/ && bundle install;

EXPOSE 9090

CMD bundle exec puma -C config/puma.rb
