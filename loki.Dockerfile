# FROM grafana/loki:2.7.4
FROM grafana/loki:latest
USER root
RUN mkdir /storage
RUN chown loki:loki /storage
USER loki
COPY loki-config.yaml /etc/loki/local-config.yaml
