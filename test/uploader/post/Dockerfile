FROM ubuntu:latest
MAINTAINER Mark Abrams "mabrams@helpguest.com"
ARG IMAGE_FILE=to-upload.png
ENV POST_TEST_IMAGE post-test-image.png
RUN apt-get update -y && apt-get install -y curl
COPY . /app
COPY ${IMAGE_FILE} /app/${POST_TEST_IMAGE}
WORKDIR /app
ENV TARGET_IP=127.0.0.1
CMD ["/bin/bash", "-c", "./test-post.sh"]
