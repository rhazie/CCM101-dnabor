# Firewall Configuration

## Allow SSH
```bash
sudo ufw allow ssh
```

## Default Deny Policy
```bash
sudo ufw default deny incoming
sudo ufw default allow outgoing
```

## Allow Port 8080
```bash
sudo ufw allow 8080/tcp
```

## Why Order Matters
If `sudo ufw enable` runs before `sudo ufw allow ssh`, the firewall may block SSH connections and lock you out of the remote server.
