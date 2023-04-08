# FROM grafana/loki:2.7.4
FROM grafana/loki:latest
COPY loki-config.yaml /etc/loki/local-config.yaml
