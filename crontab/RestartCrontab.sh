#!/bin/bash
screen -S NodeApi -X quit
screen -dmS NodeApi
screen -x -S NodeApi -p 0 -X stuff $"/usr/bin/node /data/BomB/build/crontab.js >> /data/BomB/build/crontab.md 2>&1"
screen -x -S NodeApi -p 0 -X stuff $"\n"
echo "～服务已启动～"