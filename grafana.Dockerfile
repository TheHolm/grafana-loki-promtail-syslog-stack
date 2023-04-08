# ini file comes from https://github.com/grafana/grafana/raw/v9.4.7/conf/sample.ini

FROM grafana/grafana:latest
COPY grafana-config.ini /etc/grafana/grafana.ini
