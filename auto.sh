#! /bin/bash
pwd
git pull origin pi
git push origin pi
ssh pi@frp.yongbuzhixi.com -p 7722 << EOF
cd /home/pi/docker-nginx-https
git log -1
git pull origin master
git checkout master
git log -1
git status
chmod +x run.sh
./run.sh
EOF