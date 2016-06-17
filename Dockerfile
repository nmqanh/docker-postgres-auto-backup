FROM postgres
ENV BACKUP_SCRIPT_DIR /usr/backup_scripts

ADD ./pg_* ${BACKUP_SCRIPT_DIR}/
WORKDIR $BACKUP_SCRIPT_DIR
RUN chmod +x pg_*.sh && chmod +x pg_crontab && ln -s ${BACKUP_SCRIPT_DIR}/pg_crontab /etc/cron.d && touch /var/log/cron.log
