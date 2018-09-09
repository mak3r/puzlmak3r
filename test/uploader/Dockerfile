FROM ubuntu:latest
MAINTAINER Mark Abrams "mabrams@helpguest.com"
RUN apt-get update -y
RUN apt-get install -y curl
COPY . /app
WORKDIR /app
ENV TARGET_IP=0.0.0.0
ENTRYPOINT ["sh", "-c", "curl ${TARGET_IP}:4555 > out.txt ; diff out.txt test_get.txt"]
CMD ["/bin/bash"]
#"sh", "-c", "curl ${TARGET_IP}:4555 > out.txt ; diff out.txt test_get.txt"]
