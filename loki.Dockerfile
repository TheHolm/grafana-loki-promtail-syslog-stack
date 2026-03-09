FROM alpine:latest as stage_one
# this is ugly as I assume that loki process will be run under UDI/GID 10001:10001
RUN mkdir /storage


FROM grafana/loki:latest
# Copy the directory from the builder stage
COPY --from=stage_one --chown=loki:loki /storage /storage
COPY --chown=loki:loki loki-config.yaml /etc/loki/local-config.yaml
USER loki
