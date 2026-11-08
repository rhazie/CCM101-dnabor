cat << 'EOF' > ~/automation-script.sh
#!/bin/bash
# CloudNova Technologies - Automated MySQL Disaster Recovery Backup Script
BACKUP_DIR="$HOME/backups"
DATE=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_FILE="$BACKUP_DIR/bookstack_db_backup_$DATE.sql"

mkdir -p "$BACKUP_DIR"

docker exec bookstack_db /usr/bin/mysqldump --no-tablespaces \
 -u bookstack_user --password=strong_password123 bookstackapp > "$BACKUP_FILE"

find "$BACKUP_DIR" -type f -name "*.sql" -mtime +7 -exec rm -f {} \;
EOF