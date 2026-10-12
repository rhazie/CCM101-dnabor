# Laboratory 09 - Cloud Automation Engineer

## Mission Overview

In this lab, I created a Bash script to automatically back up important application data into a compressed archive. The client's staff kept forgetting to perform backups manually, so I used automation and cron scheduling to make the backup process more consistent and reduce human error.

## Objectives

- Understand how Bash scripts automate repetitive server tasks.
- Create a backup script that compresses application data into a `.tar.gz` archive.
- Learn how to use `chmod +x` to give a script execute permission.
- Verify that the backup file was created successfully.
- Understand how cron schedules scripts to run automatically at specific times.
- Learn how automation helps prevent missed backups and improves reliability.

## Commands Executed

| Command | Purpose |
|---------|---------|
| `mkdir app-data` | Created the dummy application folder |
| `echo "This is critical client data." > app-data/data.txt` | Created a test file to represent client data |
| `nano backup.sh` | Opened the editor to write the backup script |
| `./backup.sh` | Ran the script; it failed with "Permission denied" before execute permission was added |
| `chmod +x backup.sh` | Made the script executable |
| `ls -l backups/` | Verified that the compressed backup file was created |
| `crontab -l` | Listed the current cron jobs |
| `env EDITOR=nano crontab -e` | Opened the cron table in the Nano editor |

## Skills Learned

- **Bash scripting:** I learned how to write commands in a script to automate a backup process.
- **File permissions:** I learned how `chmod +x` allows a script to run as an executable program.
- **Data backup:** I learned how to compress application files into `.tar.gz` archives using `tar`.
- **Verification:** I learned how to check the backup directory and confirm that an archive was created.
- **Cron scheduling:** I learned how to view and edit scheduled tasks using `crontab`.
- **Automation:** I learned that scheduling backups reduces dependence on people remembering to perform repetitive tasks.
