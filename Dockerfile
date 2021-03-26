FROM jitae7/ub_php_apache2:1.0
MAINTAINER jitae.kim <kimjitae7@naver.com>
EXPOSE 80
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

docker build -t phpserver:2.0 .
docker images
docker run -it -d -p 8006:80 --name dev-php phpserver:2.0
curl localhost:8006
