#!/bin/bash
echo "****this is footprinting from percipio lab*********">>footprinting.txt
echo "***************************************************">>footprinting.txt
echo "Identify Live Hosts on a Network">>footprinting.txt
echo "***************************************************">>footprinting.txt
echo "***************************************************">>footprinting.txt

echo "scanning using single ip -- nmap 192.168.0.1">>footprinting.txt
nmap 192.168.0.1>>footprinting.txt
# echo "scanning single using host name -- nmap host1.plab.com">>footprinting.txt
# nmap host1.plab.com>>footprinting.txt
# echo "scanning subnet using host name -- nmap plab.com/24">>footprinting.txt
# nmap plab.com/24>>footprinting.txt
echo "scanning subnet using ip -- nmap 192.168.0.0/24">>footprinting.txt
nmap 192.168.0.0/24>>footprinting.txt
echo "scanning subnet using ip wildcard-- nmap 192.168.0.*">>footprinting.txt
nmap 192.168.0.*>>footprinting.txt
echo "scanning subnet using ip range-- nmap 192.168.0.1-10">>footprinting.txt
nmap 192.168.0.1-10>>footprinting.txt
# echo "scanning subnet using ip range outside range-- nmap 192.168.0.1,1-10">>footprinting.txt
# nmap 192.168.0.1, 1-10>>footprinting.txt
# echo "scanning subnet using ip range outside range-- nmap 192.168.0.1,1.10">>footprinting.txt
# nmap 192.168.0.1, 1.10>>footprinting.txt
echo "*************************************************">>footprinting.txt
echo "*************************************************">>footprinting.txt
echo "***** ping scan -- scan 256 ips and gateway ip -- nmap -sP 192.168.0.0/24 *****">>footprinting.txt
nmap -sP 192.168.0.0/24>>footprinting.txt
echo "***** withou ping scan -- nmap -sn 192.168.0.0/24 *****">>footprinting.txt
nmap -sn 192.168.0.0/24>>footprinting.txt
echo "***** trace path b/w system and host -- nmap --traceroute 192.168.0.0/24 *****">>footprinting.txt
nmap --traceroute 192.168.0.0/24>>footprinting.txt
echo "***** scan for live hosts on a network using an IP address range -- nmap 192.168.0.1-4 *****">>footprinting.txt
nmap 192.168.0.1-4>>footprinting.txt
echo "***** wildcard to scan an IP range -- nmap 192.168.0.* *****">>footprinting.txt
nmap 192.168.0.*>>footprinting.txt

echo "***************************************************">>footprinting.txt
echo "***************************************************">>footprinting.txt
echo "Perform Discovery Scans">>footprinting.txt
echo "***************************************************">>footprinting.txt
echo "***************************************************">>footprinting.txt

echo "***** using ping -- nmap -sP 192.168.0.0/24 *****">>footprinting.txt
nmap -sP 192.168.0.0/24>>footprinting.txt
echo "***** using ARP -- lists open ports too -- nmap -PR 192.168.0.0/24 *****">>footprinting.txt
nmap -PR 192.168.0.0/24>>footprinting.txt
echo "***** without open ports -- nmap -sn 192.168.0.0/24 *****">>footprinting.txt
nmap -sn 192.168.0.0/24>>footprinting.txt

echo "***************************************************">>footprinting.txt
echo "when the systems have firewalls enabled, or the systems are in another subnet or network">>footprinting.txt
echo "***************************************************">>footprinting.txt
echo "***** scan for open ports to detect the system status -- nmap -p 80 192.168.0.0/24 *****">>footprinting.txt
nmap -p 80 192.168.0.0/24>>footprinting.txt
echo "send the SYN message to a specific port on a subnet to detect live systems">>footprinting.txt
echo "***** nmap -sn -PS80 192.168.0.0/24 *****">>footprinting.txt
nmap -sn -PS80 192.168.0.0/24>>footprinting.txt

echo "***************************************************">>footprinting.txt
echo "***************************************************">>footprinting.txt
echo "Port Scanning">>footprinting.txt
echo "***************************************************">>footprinting.txt
echo "***************************************************">>footprinting.txt

echo "***** simplest methods to target a system -- nmap 192.168.0.2 *****">>footprinting.txt
nmap 192.168.0.2>>footprinting.txt
echo "***** scan for a single port -- nmap -p 22 192.168.0.1 *****">>footprinting.txt
nmap -p 22 192.168.0.1>>footprinting.txt
echo "***** scan for the range of ports -- nmap -p 1-100 192.168.0.1 *****">>footprinting.txt
nmap -p 1-100 192.168.0.1>>footprinting.txt
echo "***** fast scan will scan for the 100 common ports -- nmap -F 192.168.0.1 *****">>footprinting.txt
nmap -F 192.168.0.1>>footprinting.txt
echo "***** can for 65535 ports on a system -- nmap -p- 192.168.0.1 *****">>footprinting.txt
nmap -p- 192.168.0.1>>footprinting.txt
echo "***** port scanning using TCP connect -- nmap -sT 192.168.0.1 *****">>footprinting.txt
nmap -sT 192.168.0.1>>footprinting.txt
echo "***** scan for the selective UDP ports onl -- nmap -sU -p 53,80,3389 192.168.0.1 *****">>footprinting.txt
nmap -sU -p 53,80,3389 192.168.0.1>>footprinting.txt
echo "***** nmap --top-ports 10 192.168.0.1 *****">>footprinting.txt
nmap --top-ports 10 192.168.0.1>>footprinting.txt

echo "***************************************************">>footprinting.txt
echo "***************************************************">>footprinting.txt
echo "Fingerprint an Operating System">>footprinting.txt
echo "***************************************************">>footprinting.txt
echo "***************************************************">>footprinting.txt

echo "***** operating system detection -- nmap -O 192.168.0.3 *****">>footprinting.txt
nmap -O 192.168.0.3>>footprinting.txt
echo "***** if not able detect os, provide the closest signature possible -- nmap -O --osscan-limit 192.168.0.0/24 *****">>footprinting.txt
nmap -O --osscan-limit 192.168.0.0/24>>footprinting.txt
echo "***** nmap -O --osscan-guess 192.168.0.3 *****">>footprinting.txt
nmap -O --osscan-guess 192.168.0.3>>footprinting.txt
echo "Nmap, by default, attempts five times to detect the name and version. However, to speed up the process, you can limit the number of attempts">>footprinting.txt
echo "***** nmap -O --max-os-tries 2 192.168.0.5 *****">>footprinting.txt
nmap -O --max-os-tries 2 192.168.0.5>>footprinting.txt
echo "***** perform fingerprinting -- nmap -A 192.168.0.6 *****">>footprinting.txt
nmap -A 192.168.0.6>>footprinting.txt

echo "***************************************************">>footprinting.txt
echo "***************************************************">>footprinting.txt
echo "Service probing">>footprinting.txt
echo "***************************************************">>footprinting.txt
echo "***************************************************">>footprinting.txt
echo "***** services on the open ports -- nmap -sV -O 192.168.0.1 *****">>footprinting.txt
nmap -sV -O 192.168.0.1>>footprinting.txt

echo "***************************************************">>footprinting.txt
echo "***************************************************">>footprinting.txt
echo "Perform DNS Querying">>footprinting.txt
echo "***************************************************">>footprinting.txt
echo "***************************************************">>footprinting.txt
echo "***** query the DNS -- nslookup practicelabs.com *****">>footprinting.txt
nslookup practicelabs.com>>footprinting.txt
echo "***** to check any A records -- nslookup -type=A practicelabs.com *****">>footprinting.txt
nslookup -type=A practicelabs.com>>footprinting.txt
echo "***** to display the authoritative name>>footprinting.txt
server -- nslookup -type=soa practicelabs.com *****">>footprinting.txt
nslookup -type=soa practicelabs.com>>footprinting.txt
echo "***** how long a record is cached using the debug parameter -- nslookup -type=A -debug practicelabs.com *****">>footprinting.txt
nslookup -type=A -debug practicelabs.com>>footprinting.txt
echo "***** list of mail exchange servers -- nslookup -query=MX practicelabs.com *****">>footprinting.txt
nslookup -query=MX practicelabs.com>>footprinting.txt
echo "***** list of the DNS servers that are authoritative -- nslookup -type=ns practicelabs.com *****">>footprinting.txt
nslookup -type=ns practicelabs.com>>footprinting.txt
echo "***** using a specific DNS server -- nslookup practicelabs.com 192.168.0.1 *****">>footprinting.txt
nslookup practicelabs.com 192.168.0.1>>footprinting.txt
echo "***** change the default timeout to wait for a reply -- nslookup -timeout=10 practicelabs.com *****">>footprinting.txt
nslookup -timeout=10 practicelabs.com>>footprinting.txt
echo "***** view all the available DNS records -- nslookup -query=any practicelabs.com *****">>footprinting.txt
nslookup -query=any practicelabs.com>>footprinting.txt

echo "***** info gathering -- locate the E-mail addresses and the number of hosts -no ip -- theHarvester -d practice-labs.com -l 500 -b google *****">>footprinting.txt
theHarvester -d practice-labs.com -l 500 -b google>>footprinting.txt
echo "***** To get E-mail addresses -- theHarvester -d theguardian.com -b bing *****">>footprinting.txt
theHarvester -d theguardian.com -b bing>>footprinting.txt
