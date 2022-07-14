# docker-spring

Сборка и запуск простого Spring приложения посредством Dockerfile на базе alpine linux.

1) docker build -t crspet/spring-external:v1 .
2) docker run -it --name spring-ex -p 8080:8080 crspet/spring-external:v1
