#!/bin/bash
screen -S Web3NodeApi -X quit
screen -dmS Web3NodeApi
screen -x -S Web3NodeApi -p 0 -X stuff $"/usr/bin/node /data/BomB/build/api.js >> /data/BomB/build/api.md 2>&1"
screen -x -S Web3NodeApi -p 0 -X stuff $"\n"
echo "～服务已启动～"