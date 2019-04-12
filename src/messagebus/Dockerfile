FROM bitnami/mongodb:latest
MAINTAINER Mark Abrams "mabrams@helpguest.com"
#RUN apt-get update -y && \
#apt-get install -y curl

COPY . /app
WORKDIR /app
#RUN curl -o slic3r.tgz https://dl.slic3r.org/linux/slic3r-linux-x86_64-1-2-9-stable.tar.gz
#RUN tar -xzvf slic3r.tgz

ENTRYPOINT [ "/app-entrypoint.sh" ]
CMD [ "/run.sh" ]