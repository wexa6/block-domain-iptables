#!/bin/bash

read -p "Enter a domain name: " domain

ip=$(dig +short "$domain" | grep -Eo '([0-9]{1,3}\.){3}[0-9]{1,3}' | head -n 1)

echo "IP address of $domain is: $ip"

# Block the ip
echo "Blocking $ip using iptables..."

sudo iptables -A INPUT -s "$ip" -j DROP
sudo iptables -A OUTPUT -d "$ip" -j DROP
sudo iptables -A OUTPUT -p icmp -d "$ip" -j DROP
sudo iptables -A INPUT -p icmp -s "$ip" -j DROP
