# CloudNova Technologies: Operational Manual
**System:** BookStack Wiki + MySQL 8.0 Multi-Tier Stack
**OS:** Ubuntu Server (Headless VM)

## 1. System Overview
This manual helps the IT team manage the documentation server. The system runs two Docker containers on an internal bridge network.
* **`bookstack_web`**: The web portal runs on port 80. It saves files to the `bookstack_data` persistent volume.
* **`bookstack_db`**: The MySQL 8.0 database runs on port 3306. The firewall hides it from external networks. It saves records to the `db_data` persistent volume.

## 2. Container Deployment
Start the database and web application containers in the background.

1. Open the terminal. Go to the project directory:
   ```bash
   cd ~/bookstack-app
   ```
2. Start the containers:
   ```bash
   docker compose up -d
   ```

### Check Container Status
Verify that `bookstack_web` and `bookstack_db` run properly.
```bash
docker ps
```
Both containers must show `Up` under the `STATUS` column.

### Restart the Stack
Restart the containers:
```bash
cd ~/bookstack-app && docker compose restart
```

## 3. Firewall Security
The server uses the Uncomplicated Firewall (UFW). It enforces a Default Deny incoming policy.

### Check Active Rules
Inspect the firewall status:
```bash
sudo ufw status verbose
```

### Required Security Posture
The output must match this configuration:
* **Default Policy:** `deny (incoming)`, `allow (outgoing)`
* **Port `22/tcp` (ALLOW IN):** Permits SSH access for administrators.
* **Port `80/tcp` (ALLOW IN):** Permits HTTP web traffic to BookStack.
* **Port `3306/tcp` (Hidden):** Blocks external access to MySQL. The web container connects over the internal bridge network.

## 4. Database Backups
An automated script backs up the database. It runs without locking tables.

### Verify Automated Backups
A cron job runs the script every day at midnight. Check the schedule:
```bash
crontab -l
```

### Run a Manual Backup
Run a manual backup before you update the system.

1. Execute the backup script:
   ```bash
   ~/automation-script.sh
   ```
2. Check the backups folder to confirm the file exists:
   ```bash
   ls -lh ~/backups
   ```

## 5. Disaster Recovery
Restore the database from a backup file if data loss occurs.

### Restore Procedure

1. List your available backups. Find the correct `.sql` filename:
   ```bash
   ls -lh ~/backups
   ```
2. Run the restore command. Replace `YYYY-MM-DD_HH-MM-SS` with your file timestamp:
   ```bash
   cat ~/backups/bookstack_db_backup_YYYY-MM-DD_HH-MM-SS.sql | docker exec -i bookstack_db /usr/bin/mysql -u bookstack_user --password=strong_password123 bookstackapp
   ```
3. Refresh the web browser to confirm your data is back.