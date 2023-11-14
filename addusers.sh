#!/bin/bash 

usernames=("user1" "user2")

default_pass="password"

for username in "${usernames[@]}"; do 
	useradd -s /bin/bash $username
	sudo usermod -aG sudo $username
	echo "$username:$default_pass" | chpasswd
done