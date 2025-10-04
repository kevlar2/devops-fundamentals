### What does DNS do (the “phonebook” idea)?
 - ANS: DNS works like the internet’s phonebook. It translates domain names (like www.netflix.com) into IP addresses that computers use to connect with each other. Instead of remembering numbers, we just type names, and DNS takes care of finding the right address. In the script I wrote, I applied this concept by asking the user for a domain and using commands to pull out DNS records like A and AAAA.

### What’s the difference between an IP address and a domain name?
 - ANS: A domain name is the label we type in (like bbcafrica.com), while an IP address is the numerical address used by devices to find each other over the internet. In my testing, I used the dig command to resolve domain names to their actual IPs. That made it easy to see the difference between the name we use and the address the internet uses.

### What do ip addr and ifconfig show, and why check them before DNS tests?
 - ANS: These commands show the network interfaces and IP address information for the system I’m working on. Before running any DNS tests, I check this first to confirm that my machine is connected to the network. If the system doesn’t have a valid IP or connection, DNS lookups won’t work no matter what domain I try.

### What’s the difference between recursive and authoritative DNS?
 - ANS: Recursive DNS servers do the work of finding answers by contacting multiple DNS servers on your behalf. Authoritative servers are the final source of truth that hold the actual records for a domain. When I used dig in my script, it started by contacting a recursive resolver, which eventually got responses from the authoritative servers to return records like A and NS.

### What is TTL in DNS and why does it matter?
 - ANS: TTL stands for Time To Live. It tells DNS systems how long to keep a cached result before checking again for updates. A short TTL means the data gets refreshed often, which is useful for domains that change frequently.
   - A long TTL helps reduce traffic but can show outdated results. When I ran my script, I could see each record’s TTL value (like 300 or 3600), which helped me understand how long the data would be reused before the system tried to fetch a fresh copy.
