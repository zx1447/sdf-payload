#!/bin/sh
cd /udd/z/zxy1715
export PATH=/usr/bin:/bin:/usr/pkg/bin:/usr/local/bin:/usr/sbin:/sbin
nohup ./nagent.bin -c config.yml > nagent.log 2>&1 &
echo RUN_OK2 > deploy_status.txt
