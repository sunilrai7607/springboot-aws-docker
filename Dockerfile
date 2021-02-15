FROM openjdk:8-jdk-alpine

MAINTAINER Sunil Rai <sunilrai7607@gmail.com>

WORKDIR /app

ARG version

ENV version_number=$version

COPY ./build/libs/springboot-aws-docker-$version_number.jar springboot-aws-docker.jar

EXPOSE 8080

ENTRYPOINT ["java","-jar","springboot-aws-docker.jar"]
