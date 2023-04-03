FROM lscr.io/linuxserver/syslog-ng:latest

# EXPOSE 1514
COPY syslog-ng.conf /config
