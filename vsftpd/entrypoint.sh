#!/bin/bash
sed -i 's/^module(load="imklog")/#module(load="imklog")/' /etc/rsyslog.conf

rsyslogd

service vsftpd restart

useradd -m -d /home/jefe -g sudo -p $(mkpasswd 'abc123..') -s /bin/bash jefe

useradd -m -d /home/saruman -g sudo -p $(mkpasswd 'abc123..') -s /bin/bash saruman

mkdir /home/jefe/public_html
chmod -w /home/jefe/
chmod 777 /home/jefe/public_html

mkdir /sauron
mkdir /sauron/public_html
chmod -w /sauron/
chmod 777 /sauron/public_html

tail -f "/var/log/syslog"