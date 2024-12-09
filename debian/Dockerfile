FROM debian:12

RUN apt update && apt install -y net-tools procps most iproute2 iputils-ping dnsutils nano

RUN apt install ftp ftp-ssl -y

RUN echo "ftp 21/tcp" >> /etc/services

ENTRYPOINT ["tail", "-f", "/dev/null"]