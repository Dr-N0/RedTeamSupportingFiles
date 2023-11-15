#!/bin/bash

# Clear or truncate system logs
echo "Clearing system logs..."

# Clear syslog
sudo cat /dev/null > /var/log/syslog

# Clear auth.log
sudo cat /dev/null > /var/log/auth.log

# Clear kern.log
sudo cat /dev/null > /var/log/kern.log

# Clear other logs as needed...

echo "System logs cleared."