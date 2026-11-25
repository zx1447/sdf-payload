#!/bin/sh
cd /udd/z/zxy1715
export PATH=/usr/bin:/bin:/usr/pkg/bin:/usr/local/bin:/usr/sbin:/sbin
if ps -U zxy1715 -o comm= 2>/dev/null | grep -q nagent; then
  echo "$(date) ALIVE" >> deploy_status.txt
else
  nohup ./nagent.bin -c config.yml > nagent.log 2>&1 &
  echo "$(date) RESTARTED" >> deploy_status.txt
fi
