#!/bin/bash

POOL=etc-asia1.nanopool.org:19999
WALLET=0xe8e1673bd442235b2f6a3b9429ad888e9a8e11cd
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-lol

cd "$(dirname "$0")"

chmod +x ./lolMiner && ./lolMiner --algo ETCHASH --pool $POOL --user $WALLET.$WORKER --tls 0 $@
