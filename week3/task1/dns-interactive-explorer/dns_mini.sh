#!/bin/bash

echo "Enter a domain / full URL:"
read input

# Remove protocol and www, get only the domain
domain=$(echo "$input" | sed -E 's|https?://||; s|www\.||' | cut -d/ -f1)

echo "Domain: $domain"

# Create logs directory if it doesn't exist
mkdir -p logs

# Generate timestamp: YYYYMMDD-HHMMSS
timestamp=$(date +"%Y%m%d-%H%M%S")

# Build report file name using timestamp and domain
filename="logs/REPORT-${timestamp}-${domain}.txt"

# Redirect all output (stdout + stderr) into the log file
exec 3>&1
exec > "$filename" 2>&1

# Get server ip address
server_ip_address=$(hostname -I | awk '{print $1}')
echo "ip address: $server_ip_address"
echo "==================================="
echo

# Get current DNS resolver details
current_dns_resolver_details=$(resolvectl status | tail -n 7)
echo "Current DNS resolver info: "
echo "==================================="
echo
echo "$current_dns_resolver_details"
echo

# DNS lookups (A, AAAA, NS, TXT)
dns_a_record_lookup=$(dig "$domain" A | grep "^$domain.*A" | awk '{print $1, $2, $3, $4, $5}')
dns_aaaa_record_lookup=$(dig "$domain" AAAA | grep "^$domain.*AAAA" | awk '{print $1, $2, $3, $4, $5}')
dns_ns_record_lookup=$(dig "$domain" NS | grep "^$domain.*NS" | awk '{print $1, $2, $3, $4, $5}')
dns_txt_record_lookup=$(dig "$domain" TXT | grep "^$domain.*TXT" | awk '{print $1, $2, $3, $4, $5}')

echo "====== A-record ======"
echo "$dns_a_record_lookup"
echo
echo "====== AAAA-record ======"
echo "$dns_aaaa_record_lookup"
echo
echo "====== NS-record ======"
echo "$dns_ns_record_lookup"
echo
echo "====== TXT-record ======"
echo "$dns_txt_record_lookup"
echo
echo "======================================="

# === Part 4: Quick HTTP Header Check ===
url="https://$domain"

echo "----------------------------------------"
echo "Quick HTTP Header Check for: $url"
echo "----------------------------------------"

# Fetch only the status line and 2 headers
curl -Is "$url" | head -n 3
echo
echo "======================================="

# Final footer — write to both file and screen
echo "----------------------------------------" >&3
echo "Saved: $filename" >&3
echo "----------------------------------------" >&3
