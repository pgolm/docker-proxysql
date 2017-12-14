FROM ubuntu:16.04

ARG PROXYSQL_VERSION=1.4.3

LABEL maintainer="Peter Golm <golm.peter@gmail.com>" \
      proxysql.version=$PROXYSQL_VERSION

RUN apt-get update && \
    apt-get install -y curl

RUN curl -L wget https://github.com/sysown/proxysql/releases/download/v$PROXYSQL_VERSION/proxysql_$PROXYSQL_VERSION-ubuntu16_amd64.deb > /tmp/proxysql.deb && \
    dpkg -i /tmp/proxysql.deb && \
    rm /tmp/proxysql.deb

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

COPY proxysql.cnf /etc/proxysql.cnf

VOLUME /var/lib/proxysql

EXPOSE 3306 6032

CMD [""]
