FROM alpine

RUN apk add openjdk8

COPY ./ /home/projects/spring1

EXPOSE 8080

VOLUME /home/projects/spring1

WORKDIR /home/projects/spring1

CMD ./gradlew build \
                && java -jar ./build/libs/*T.jar