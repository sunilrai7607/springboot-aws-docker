FROM openjdk:8-jdk-alpine

MAINTAINER Sunil Rai <sunilrai7607@gmail.com>

VOLUME /app

ARG version

ENV version_number=&version

COPY ./build/libs/springboot-aws-docker-$version_number.jar springboot-aws-docker.jar

ENTRYPOINT["java","-jar","/springboot-aws-docker.jar"]
