#! /bin/bash
pwd
git checkout master
git pull origin master
git push origin master
ssh root@bce.yongbuzhixi.com<< EOF
cd ~/docker/docker-nginx-https
git log -1
git pull
git checkout master
git log -1
git status
chmod +x run.sh
./run.sh
EOF