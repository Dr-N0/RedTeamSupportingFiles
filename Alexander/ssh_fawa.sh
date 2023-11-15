#!/usr/bin/env python3
import subprocess
import sys
import re
import time

def is_valid_ip(ip):
    """Check if an IP address is valid."""
    return re.match(r'^(\d{1,3}\.){3}\d{1,3}$', ip) is not None

def change_ip_and_ssh(new_ip, ssh_target):
    """Change IP address and SSH into the target."""
    try:
        # Change IP address
        subprocess.run(['sudo', 'ip', 'addr', 'add', f'{new_ip}/24', 'dev', 'ens0'], check=True)

        # Wait for the network to settle (adjust as needed)
        time.sleep(5)

        # SSH into the target machine
        subprocess.run(['ssh', ssh_target], check=True)

    except subprocess.CalledProcessError as e:
        print(f"Error: {e}")
        sys.exit(1)

def main():
    # Prompt for the new IP address
    new_ip = input("Enter the new IP address: ")

    # Validate the entered IP address
    if not is_valid_ip(new_ip):
        print("Invalid IP address. Exiting.")
        sys.exit(1)

    # Define SSH target
    ssh_target = "user@192.168.1.200"  # Replace with the SSH target address

    # Change IP address and SSH into the target
    change_ip_and_ssh(new_ip, ssh_target)

if __name__ == "__main__":
    main()