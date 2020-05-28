#!/usr/bin/bash -x

sleep 9
LOG="/var/log/systemup.log"
STAMP=`date  "+%a %d %b %Y %R:%S %Z"`
SERVICES="atd cups crond auditd"

if [ `date +%H%M` == "0000" -o `date +%H%M` == "2359" ]; then
  echo "Server: `hostname`" >> ${LOG}
fi


echo "System UP at: $STAMP" >> ${LOG}
for SVC in $SERVICES; do
  systemctl status ${SVC}   | egrep -q "Active: active" \
  && echo "Service ${SVC} UP at: $STAMP" >> ${LOG}
done

