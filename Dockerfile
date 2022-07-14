FROM alpine

RUN apk add openjdk8 && wget  https://services.gradle.org/distributions/gradle-7.4.1-bin.zip && \
    unzip gradle-7.4.1-bin.zip && \
    rm -f gradle-7.4.1-bin.zip && \
    export PATH=$PATH:/gradle-7.4.1/bin

COPY ./ /home/projects/spring1

EXPOSE 8080

VOLUME /home/projects/spring1

WORKDIR /home/projects/spring1

CMD export PATH=$PATH:/gradle-7.4.1/bin && gradle build \
                && java -jar ./build/libs/*T.jar