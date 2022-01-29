echo "*****************************************">>enumbat1.txt
echo "*****************************************">>enumbat1.txt
echo "netbios">>enumbat1.txt
echo "*****************************************">>enumbat1.txt
echo "*****************************************">>enumbat1.txt
echo "***** nbtstat -a 192.168,0,1--> -a netbios name table*****">>enumbat1.txt
nbtstat -a 192.168.0.1>>enumbat1.txt
echo "***** nbtstat -c 192.168,0,1--> -a netbios name cache content*****">>enumbat1.txt
nbtstat -c 192.168.0.1>>enumbat1.txt
echo "***** net use -- connection status, w info, shared folder/drive *****">>enumbat1.txt
net use>>enumbat1.txt
echo "***** nmap -sV -v --script nbstat.nse 192.168.0.1 -- sV service version*****">>enumbat1.txt
nmap -sV -v --script nbstat.nse 192.168.0.1>>enumbat1.txt
echo "***** nmap -sU -p 137 --script nbstat.nse 192.168.0.1 -- sU udp scan, -p port*****">>enumbat1.txt
nmap -sU -p 137 --script nbstat.nse 192.168.0.1>>enumbat1.txt

echo "*****************************************">>enumbat1.txt
echo "*****************************************">>enumbat1.txt
echo "SNMP">>enumbat1.txt
echo "*****************************************">>enumbat1.txt
echo "*****************************************">>enumbat1.txt
echo "***** nmap -sU -p 161 192.168.0.1 -- sU udp scan, -p port*****">>enumbat1.txt
nmap -sU -p 161 192.168.0.1>>enumbat1.t
echo "***** snmp-check 192.168.0.1 -- sys info, user account*****">>enumbat1.txt
snmp-check 192.168.0.1>>enumbat1.txt
echo "***** nmap -p 2049 192.168.0.1 *****">>enumbat1.txt
nmap -p 2049 192.168.0.1>>enumbat1.txt