awk '/cron/ || /cron/, !/sudo/' /var/log/syslog | awk 'NF < 13' >> /home/absolutlubis/Documents/soalshift1/syslogno5.log
