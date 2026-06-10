# Recon Automation

A Bash script that automates reconnaissance on a target domain or IP address.

## Usage
bash recon.sh <target>

Example: bash recon.sh google.com

## What it does
- Pings the target 4 times
- Performs a DNS lookup
- Performs a WHOIS lookup
- Saves all results to recon_results/<target>.txt

## Output
Results are saved to a recon_results/ folder created automatically 
in the current directory.

## Requirements
- Bash
- nslookup
- whois
- ping