FROM ubuntu

MAINTAINER Jonathan Miller <jonathan.michael.miller@gmail.com>

RUN apt-get update && \
    apt-get install -y mongodb-server

VOLUME [ "/data" ]

EXPOSE 27017
EXPOSE 28017

ENTRYPOINT ["mongod", "-f", "/data/mongodb.conf"]
