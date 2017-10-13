#! /bin/bash
pwd
git pull origin master
git push origin master
ssh ubuntu@aws3.yongbuzhixi.com<< EOF
cd ~/docker-nginx-https
git log -1
git pull origin master
git log -1
date
git status
ls ./config/nginx/certs/
chmod +x run.sh
./run.sh
EOF