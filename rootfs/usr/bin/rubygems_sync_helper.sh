#!/bin/bash

LOGFILE="/var/log/rubygems_sync.log"

(
    cd $BASEDIR
    echo "===== SYNC STARTED AT $(date -R) ====="
    echo "> RUN gem mirror..."
    gem mirror
    echo ""
    echo "===== SYNC FINISHED AT $(date -R) ====="
) 2>&1 | tee $LOGFILE

savelog -c {{LOG_NUM}} $LOGFILE > /dev/null

