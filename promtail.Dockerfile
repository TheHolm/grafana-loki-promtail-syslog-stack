# FROM grafana/promtail:2.7.4
FROM grafana/promtail:latest

COPY promtail-config.yaml /etc/promtail/config.yml
