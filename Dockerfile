#syntax=docker/dockerfile:1
FROM ubuntu:latest

ARG APIMATION_VERSION=0.55.0
ARG TMP_ZIP_NAME=appimation.zip
ENV VERSION=${APPIMATION_VERSION}

RUN apt update
RUN apt -y install curl unzip
ADD https://github.com/apimation/cli-client/releases/download/v${APIMATION_VERSION}/apimation_${APIMATION_VERSION}_linux_amd64.zip ./${TMP_ZIP_NAME}
RUN unzip ./${TMP_ZIP_NAME}
RUN rm ./${TMP_ZIP_NAME}

ENTRYPOINT ["./apimation"]
