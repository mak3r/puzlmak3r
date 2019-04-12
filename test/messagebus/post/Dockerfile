FROM bitnami/mongodb:latest
MAINTAINER Mark Abrams "mabrams@helpguest.com"
ARG IMAGE_FILE=model001.stl
ENV POST_TEST_MODEL post-test-model.stl
#RUN apt-get update -y && apt-get install -y curl
COPY . /app
COPY ${IMAGE_FILE} /app/${POST_TEST_MODEL}
WORKDIR /app
ENV TARGET_IP=127.0.0.1
CMD [ "/bin/bash" ] 
