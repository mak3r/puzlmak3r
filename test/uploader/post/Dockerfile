FROM ubuntu:latest
MAINTAINER Mark Abrams "mabrams@helpguest.com"
ARG IMAGE_FILE=../../../3d/model001.png
RUN apt-get update -y && apt-get install -y curl
COPY . /app
COPY ${IMAGE_FILE} /app/post-test-img.png
WORKDIR /app
ENV TARGET_IP=127.0.0.1
CMD ["/bin/bash", "-c", "./test-get.sh"]
