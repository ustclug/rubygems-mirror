FROM smartentry/alpine:3.4-0.3.0

ADD . $ASSETS_DIR

RUN smartentry.sh build

ENV UPSTREAM=http://rubygems.org \
    PARALLELISM=10 \
    RETRIES=3 \
    DELETE=false \
    SKIP_ERROR=true \
    LOG_NUM=50

VOLUME /data/rubygems /var/log

CMD /usr/bin/rubygems_sync_helper.sh
