FROM debian:12

RUN apt update && apt install -y net-tools procps most iproute2 iputils-ping dnsutils rsyslog sudo nano whois

RUN apt install -y vsftpd

COPY entrypoint.sh ./entrypoint.sh
RUN chmod +x ./entrypoint.sh
ENTRYPOINT [ "./entrypoint.sh" ]
