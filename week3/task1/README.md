# DNS Interactive Explorer

### Objective

 - To understand what DNS does and why it matters
 - To know the differnece between IP addresses and domain names
 - To be bale to explain DNS concepts like records, TTL and resolvers
 - To learn and practice linux commands to explore DNS
 - To build an interactive bash script that checks, and logs DNS inf for any domain 
 
### Requirements
 - Prompt for a domain
   - Ask the user to enter a domain (e.g., github.com).
   - If a URL is given, extract just the domain (e.g., from https://…).
 - Show local network basics
   - Display your primary IP address (ip addr or ifconfig).
   - Show your current DNS resolver(s):
     - Prefer resolvectl status if available, otherwise read nameserver lines from /etc/resolv.conf.
 - Look up DNS records for the domain
   - Show A and AAAA records (with TTLs).
   - Show the authoritative NS (nameservers).
   - Show any TXT records.
 - Quick HTTP header check
   - Fetch only the headers from https://<domain>.
   - Print the first status line (e.g., HTTP/2 200) and two headers.
 - Save a report
   - Save everything into: logs/REPORT-YYYYMMDD-HHMMSS-<domain>.txt
   - print: Saved: logs/<filename>

### Deliverables
 - dns_mini.sh — an interactive Bash script (must be executable).
 - logs/ — folder where your script saves reports.
 - reading-notes.md — short theory answers (in your own words).

### Folder structure 
 - dns-interactive-explorer
   - dns_mini.sh
   - logs
   - reading-notes.md 
