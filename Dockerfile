FROM zabbix/zabbix-server-pgsql:alpine-4.4.5

USER root

RUN apk --update add curl openssl && rm -rf /var/cache/apk/*

USER zabbix

CMD ["/usr/sbin/zabbix_server", "--foreground", "-c", "/etc/zabbix/zabbix_server.conf"]
