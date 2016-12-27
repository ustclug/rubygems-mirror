FROM smartentry/alpine:3.4-0.3.13

ADD .docker $ASSETS_DIR

RUN smartentry.sh build

VOLUME /data/rubygems /var/log
