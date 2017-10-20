#! /bin/bash
pwd
git pull origin bce
git push origin bce
ssh root@bce.yongbuzhixi.com<< EOF
cd ~/docker/docker-nginx-https
git log -1
git pull
git checkout bce
git log -1
git status
ls ./config/nginx/certs/
chmod +x run.sh
./run.sh
EOF