FROM bitnami/mongodb:latest
MAINTAINER Mark Abrams "mabrams@helpguest.com"

ARG IMAGE_FILE=model001.stl
ARG MONGODB_PORT=27017
ARG DB="local"

#RUN apt-get update -y && apt-get install -y curl

COPY . /app
COPY ${IMAGE_FILE} /app/${POST_TEST_MODEL}
WORKDIR /app

ENV POST_TEST_MODEL post-test-model.stl
ENV ENV_MONGODB_PORT="${MONGODB_PORT}"
ENV ENV_DB "${DB}"
ENV TARGET_IP=127.0.0.1

ENTRYPOINT [ "mongo" "${TARGET_IP}:${ENV_MONGODB_PORT}/${ENV_DB}" ]
CMD [ "--eval" ] 
