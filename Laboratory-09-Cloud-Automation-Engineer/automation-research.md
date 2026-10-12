# Automation Research

## Bash Script
A Bash script is a text file that contains commands that the Bash shell executes in order. The first line, `#!/bin/bash`, tells the system to use Bash to interpret and run the commands in the file.

## Variables
Variables store values, such as a backup folder path, under a name like `$BACKUP_DIR`. Using a variable makes a script easier to maintain because if the folder location changes, I only need to update the variable instead of changing the path in every command.

## Cron Job
Cron is a scheduling tool in Linux that automatically runs commands or scripts at specific times or intervals. It is useful in cloud operations because servers run continuously, allowing tasks such as backups to happen regularly without depending on someone to run them manually. This reduces human error and helps keep important maintenance tasks consistent.
