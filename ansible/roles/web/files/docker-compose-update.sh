#!/bin/sh

set -e

echo "Commencing docker-compose update `date`" >> /var/log/containers/docker-compose-update.log
# Do a pull then an update
/usr/bin/docker-compose -f /home/deploy/square_check/docker/docker-compose.prod.yml pull --no-parallel >> /var/log/containers/docker-compose-update.log 2>&1
/usr/bin/docker-compose -f /home/deploy/square_check/docker/docker-compose.prod.yml up -d >> /var/log/containers/docker-compose-update.log 2>&1
echo "Sleeping 10 seconds." >> /var/log/containers/docker-compose-update.log
sleep 10
/usr/bin/docker-compose -f /home/deploy/square_check/docker/docker-compose.prod.yml restart >> /var/log/containers/docker-compose-update.log 2>&1
echo "Finishing docker-compose update `date`" >> /var/log/containers/docker-compose-update.log