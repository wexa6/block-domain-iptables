# Block Domain using iptables

This Bash script allows you to block any domain by resolving it to its IP address and applying `iptables` rules to drop all incoming and outgoing traffic.

Usage:
------

1. Clone or download this repository.
2. Make the script executable:

chmod +x block.sh

3. Run the script:

Example:
-------
./block.sh

Enter a domain name: google.com

IP address of google.com is: 142.251.37.206

Blocking 142.251.37.206 using iptables...

Notes:
------
- Run the script with sudo to allow iptables changes.
- Rules added by iptables are not persistent after reboot unless saved manually.
- Only the first resolved IP is blocked. Domains like google.com may have many IPs.
