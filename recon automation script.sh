#!/bin/bash

if [ -z $1 ]
then
    echo "Usage: $0 <target>"
    exit 1
fi

mkdir -p "recon_results"

ping_4=$(ping -c 4 $1)
dns_lookup=$(nslookup $1)
user_print=$(whois $1)

echo "=== PING ===" >> recon_results/$1.txt
echo "$ping_4" >> recon_results/$1.txt

echo "=== DNS LOOKUP ==='" >> recon_results/$1.txt
echo "$dns_lookup" >> recon_results/$1.txt

echo "=== WHOIS ===" >> recon_results/$1.txt
echo "$user_print" >> recon_results/$1.txt

echo "Recon complete. Results saved to recon_results/$1.txt"