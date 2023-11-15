#!/bin/bash

# Set the destination IP address
destination_ip="192.168.1.100"

# Set the number of packets to send
num_packets=100

# Set the packet size in bytes
packet_size=1024

# Generate the fake packets
for i in range(num_packets); do
  # Generate a random packet
  packet=$(dd if=/dev/urandom count=$packet_size | od -An -t u1)

  # Send the packet to the destination IP address
  sudo scapy sendp packet dst=$destination_ip
done