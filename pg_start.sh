#!/bin/bash

# Start Cron Service to Auto Backup
service cron restart

# Save Config Enviroments
echo "BACKUP_DIR="$BACKUP_DIR >> pg_backup.config
echo "POSTGRES_PASSWORD="$POSTGRES_PASSWORD >> pg_backup.config
echo "BACKUP_USERNAME="$BACKUP_USERNAME >> pg_backup.config

# Start Postgres
/docker-entrypoint.sh "postgres"


