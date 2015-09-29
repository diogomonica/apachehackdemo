#! /bin/bash
docker build -t website apache
docker rm -f db; docker run -d --name db -e MYSQL_ROOT_PASSWORD=fake mariadb
docker run -d -p 80:80 --link db:db website
