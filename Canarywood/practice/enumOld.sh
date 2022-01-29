echo "*****************************************">>enumsh1.txt
echo "*****************************************">>enumsh1.txt
echo "netbios">>enumsh1.txt
echo "*****************************************">>enumsh1.txt
echo "*****************************************">>enumsh1.txt
echo "***** nmap -sV -v --script nbstat.nse 192.168.0.1 -- sV service version*****">>enumsh1.txt
nmap -sV -v --script nbstat.nse 192.168.0.1>>enumsh1.txt
echo "***** nmap -sU -p 137 --script nbstat.nse 192.168.0.1 -- sU udp scan, -p port*****">>enumsh1.txt
nmap -sU -p 137 --script nbstat.nse 192.168.0.1>>enumsh1.txt

echo "*****************************************">>enumsh1.txt
echo "*****************************************">>enumsh1.txt
echo "SNMP">>enumsh1.txt
echo "*****************************************">>enumsh1.txt
echo "*****************************************">>enumsh1.txt
echo "***** nmap -sU -p 161 192.168.0.1 -- sU udp scan, -p port*****">>enumsh1.txt
nmap -sU -p 161 192.168.0.1>>enumsh1.txt
echo "***** snmp-check 192.168.0.1 -- sys info, user account*****">>enumsh1.txt
snmp-check 192.168.0.1>>enumsh1.txt
echo "***** nmap -p 2049 192.168.0.1 *****">>enumsh1.txt
nmap -p 2049 192.168.0.1>>enumsh1.txt