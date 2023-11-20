#!/bin/bash
set -e
# for g++, gcc. and cmake in case I need to compile on the system
sudo apt-get update && sudo apt-get install build-essential

# substitute if above fails
sudo apt-get install g++
sudo apt-get install gcc
sudo apt-get install cmake
sudo apt-get install make

# verifies installation
g++ -v
gcc -v
cmake --version
make --version

# This is grep for zip files
#sudo apt install zipgrep
# move from kali

# THis should not be used for duckyText but what this does is make it an elf file so that it is unreadable
# This allows binary crations
sudo apt-get install shc

sudo apt update
# for bpftool might want to check if there fixme or install from github
#sudo apt-get install linux_tools_common 
echo deb http://cloudfront.debian.net/debian sid main >> /etc/apt/sources.list
sudo apt-get install -y bpfcc-tools libbpfcc libbpfcc-dev linux-headers-$(uname -r)
sudo apt install clang

# check if libpcap is avaliable in case ld preloading works

sudo apt-get install pip
pip install psutil

# mkdir

mkdir /usr/share/doc/.foothold

# Please update/upgrade man and metasploit?`
