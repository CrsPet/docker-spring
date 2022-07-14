# docker-spring

Сборка и запуск простого Spring приложения посредством Dockerfile на базе alpine linux.

Сборка docker image:
1) docker build -t crspet/spring-external:v1 . 

Запуск docker container:
2) docker run -it --name spring-ex -p 8080:8080 crspet/spring-external:v1

Запущенное приложение доступно для использования через:
3)  localhost:8080
