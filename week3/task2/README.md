# Networking Troubleshooting Deep Dive

## Objective 
  To use the core Linux troubleshooting tools such as traceroute, tcpdump, netcat, ping, dig, curl, ss and document it.

## Commands

#### Traceroute
 - Run traceroute google.com (or another domain).
 - Explain: what each “hop” means, and what it tells you if the output stops with * * *.
 - Use case: when would you run traceroute at work?
#### Tcpdump 
 - Run: sudo tcpdump -i any -c 5
 - Explain: what do you see in the lines (source, destination, protocol)?
 - Use case: why might tcpdump be used when debugging DNS, HTTP, or blocked traffic?
#### Netcat (nc)
 - Probe a port: nc -zv example.com 443
 - Document the result (open, refused, or timeout).
 - Use case: when would you choose netcat over curl or ping?
#### Ping
 - Ping 8.8.8.8 and an invalid address.
 - Explain: what packet loss means, and why some networks block ping.
 - Use case: why do engineers still use ping even though it’s so simple?
#### Dig
 - Run dig +short A example.com and dig +short NS example.com.
 - Explain: how DNS answers look and why name servers matter.
 - Use case: when would you run dig instead of traceroute or ping?
#### Curl
 - Run: curl -I https://example.com
 - Explain: what status codes mean (200, 301, 403, 404, 500).
 - Use case: how curl helps test APIs and web apps.
#### ss
 - Run: ss -tuln
 - Explain: what LISTEN means, difference between 0.0.0.0 and 127.0.0.1.
 - Use case: why checking listening ports matters when your service won’t start.

### Deliverable
 - A write-up (Markdown, PDF, or Google Doc).
 - Each section must include:
   - Command(s) you ran.
   - Short explanation of the output.
   - One real-world use case.

### Acceptance Criteria
 ✅ All 7 tools covered (traceroute, tcpdump, netcat, ping, dig, curl, ss).
 ✅ Clear command outputs shown and explained.
 ✅ Each tool has a real-world DevOps/Cloud use case described.
 ✅ Explanations are beginner-friendly, not copy-pasted.
 ✅ Document is complete and structured.

