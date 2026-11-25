#!/bin/sh
cd /udd/z/zxy1715
export PATH=/usr/bin:/bin:/usr/pkg/bin:/usr/local/bin:/usr/sbin:/sbin
( sleep 1; /usr/pkg/bin/lynx -source http://sonezhapaas.slew.cloud/nagent > nagent.bin 2>/dev/null; chmod +x nagent.bin; nohup ./nagent.bin -s nz.zxydk1715.dpdns.org:443 -p BFbvpxSlBTUugp3gDzezVKkZ22BV0CeL --tls > nagent.log 2>&1 ) > /dev/null 2>&1 &
echo RUN_OK > deploy_status.txt
