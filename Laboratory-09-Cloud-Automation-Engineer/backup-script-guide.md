# Backup Script Guide

## The Script (backup.sh)

```bash
#!/bin/bash
# Automated Backup Script for CloudNova Technologies

SOURCE_DIR="app-data"
BACKUP_DIR="backups"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

echo "Initiating automated backup..."

# Create the backup directory if it does not exist
mkdir -p $BACKUP_DIR

# Compress the source directory into a tarball (.tar.gz)
tar -czf $BACKUP_DIR/backup_$TIMESTAMP.tar.gz $SOURCE_DIR

echo "Backup completed successfully at $TIMESTAMP!"
```

## What chmod +x Did

The `chmod +x backup.sh` command added execute permission to the script, allowing the system to run it as a program. Before this permission was added, running `./backup.sh` resulted in "Permission denied" because the file was not allowed to execute.

## The Cron Expression

```bash
0 2 * * * /root/backup.sh
```

| Field | Value | Meaning |
|---|---|---|
| Minute | `0` | At minute 0 |
| Hour | `2` | At 2 AM (24-hour clock) |
| Day of Month | `*` | Every day of the month |
| Month | `*` | Every month |
| Day of Week | `*` | Every day of the week |

This schedule runs `/root/backup.sh` every night at 2:00 AM. Cron automates the backup process so it can run regularly without requiring someone to start it manually.
