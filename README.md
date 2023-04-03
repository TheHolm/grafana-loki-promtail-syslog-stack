# Grafana + Loki + Promtail + syslog-ng

Small docker-compose to deploy 4 containers which will crate whole stack to collect and display syslog on port 514

## Components

1. [syslog-ng](https://github.com/syslog-ng/syslog-ng) - listen on TCP/UDP 514 and normalise syslog. Logs are feed to promtail without local storage.
2. [promtail](https://grafana.com/docs/loki/latest/clients/promtail/) - get syslog stream from syslog-ng, extract fields and feed it to Loki.
3. [Loki](https://grafana.com/docs/loki/latest/) - it is where magic happens. Stores logs on *loki-storage* volumes
4. [Grafana](https://grafana.com/docs/grafana/latest/) - front-end to display logs. Loki need to be added as [data source](https://grafana.com/docs/grafana/latest/datasources/loki/). Loki URL ```http://loki:3100```

## Deploying

```docker-compose build```     
```docker-compose up -d```
