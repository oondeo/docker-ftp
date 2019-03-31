#!/bin/dash
STI_SCRIPTS_PATH=${STI_SCRIPTS_PATH:-/usr/libexec/s2i/bin}
PID_FILE=${2:-/run/proftpd.pid}
CONFIG_DIR=${1:-/opt/app-root/etc}
CONFIG_PATH=${3:-/opt/app-root/etc/php/php.ini}

while true
do
    sleep 10
    #conf-php $PHP_INI_PATH $UNIT_CONTROL_SOCKET $UNIT_CONFIG_DIR
    $STI_SCRIPTS_PATH/conf-ssh
    pkill -HUP -F $PID_FILE || true
    inotifywait -e CREATE -r $CONFIG_DIR
    #curl -X PUT --data-binary @$1--unix-socket $2 http://localhost/config
done