#!/bin/sh
cd /udd/z/zxy1715
{
echo "=== id ==="
id
echo "=== psh tail 500-660 ==="
sed -n '500,660p' /usr/local/bin/psh
echo "=== psh file ==="
ls -l /usr/local/bin/psh
echo "=== pkg bin ==="
ls /usr/pkg/bin
echo "=== uptime ==="
uptime
} > recon.txt 2>&1
echo RUN_OK3 > deploy_status.txt
