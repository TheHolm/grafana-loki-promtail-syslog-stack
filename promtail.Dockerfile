FROM grafana/promtail:2.7.4

EXPOSE 1514
COPY promtail-config.yaml /etc/promtail/config.yml
