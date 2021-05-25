docker stop proxy && docker rm proxy
docker build -t nextstep/reverse-proxy:0.0.2 .
docker run -d -p 80:80 -p 443:443 --name proxy nextstep/reverse-proxy:0.0.2
