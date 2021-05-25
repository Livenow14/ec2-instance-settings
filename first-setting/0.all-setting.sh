#!bin/bash

if [ $# -lt 1 ] ;  then
  echo '도메인 이름을 작성해주세요 (sudo sh install.sh your-domain-name)'
  exit 1
fi

echo "> 설치된 파일 업데이트..."
sudo apt-get update && \

echo "> 도커 다운로드..."
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common && \
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - && \
sudo apt-key fingerprint 0EBFCD88 && \
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" && \
sudo apt-get update && \
sudo apt-get install -y docker-ce && \
sudo usermod -aG docker ubuntu && \
sudo curl -L "https://github.com/docker/compose/releases/download/1.23.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && \
sudo chmod +x /usr/local/bin/docker-compose && \
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

echo "> Mysql-server 다운로드..."
sudo apt install -y mysql-server

echo "> java 11 다운로드..."
sudo apt install -y default-jdk

echo "> 기본 시간 수정 ..."
sudo rm /etc/localtime
sudo ln -s /usr/share/zoneinfo/Asia/Seoul /etc/localtime

echo "> TLS 설정 ..."
docker run -it --rm --name certbot \
  -v '/etc/letsencrypt:/etc/letsencrypt' \
  -v '/var/lib/letsencrypt:/var/lib/letsencrypt' \
  certbot/certbot certonly -d "$1" --manual --preferred-challenges dns --server https://acme-v02.api.letsencrypt.org/directory

echo "> reverse proxy 시작..."
cp /etc/letsencrypt/live/"$1"/fullchain.pem ./
cp /etc/letsencrypt/live/"$1"/privkey.pem ./
docker stop proxy && docker rm proxy
docker build -t nextstep/reverse-proxy:0.0.2 .
docker run -d -p 80:80 -p 443:443 --name proxy nextstep/reverse-proxy:0.0.2

echo "> 도커 compose up..."
docker-compose up -d

