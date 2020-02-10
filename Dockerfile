FROM zabbix/zabbix-server-pgsql:alpine-4.4.5

RUN apk --update add curl openssl && rm -rf /var/cache/apk/*

CMD ["/usr/sbin/zabbix_server", "--foreground", "-c", "/etc/zabbix/zabbix_server.conf"]
