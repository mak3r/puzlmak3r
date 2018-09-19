FROM ubuntu:latest
MAINTAINER Mark Abrams "mabrams@helpguest.com"
RUN apt-get update -y && apt-get install -y curl
COPY . /app
WORKDIR /app
ENV TARGET_IP=127.0.0.1
CMD ["/bin/bash", "-c", "./test-get.sh"]
