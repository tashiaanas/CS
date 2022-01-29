echo "***************************************************">>scanningnetwork.txt
echo "***************************************************">>scanningnetwork.txt
echo "hping">>scanningnetwork.txt
echo "***************************************************">>scanningnetwork.txt
echo "***************************************************">>scanningnetwork.txt
echo "hping3 192.168.0.1 --icmp -c 5 ---discovery of 5 host">>scanningnetwork.txt
hping3 192.168.0.1 --icmp -c 5>>scanningnetwork.txt
echo "hping3 intranet --scan 80 -S ---scan for TCP port -S for syn flag">>scanningnetwork.txt
hping3 intranet --scan 80 -S>>scanningnetwork.txt
echo "hping3 intranet --scan 22,443,80 -S ---mulptiple ports">>scanningnetwork.txt
hping3 intranet --scan 80,22,443 -S>>scanningnetwork.txt
echo "hping3 192.168.0.1 --scan 1-82 -S ---range ports">>scanningnetwork.txt
hping3 192.168.0.1 --scan 1-82 -S>>scanningnetwork.txt
echo "hping3 192.168.0.1 --scan 1-65535 -S ---tcp ports">>scanningnetwork.txt
hping3 192.168.0.1 --scan 1-65535 -S>>scanningnetwork.txt
echo "hping3 -8 1-100 -S 192.168.0.1 ---open ports -8 enable SCAN mode">>scanningnetwork.txt
hping3  -8 1-100 -S 192.168.0.1>>scanningnetwork.txt

echo "***************************************************">>scanningnetwork.txt
echo "***************************************************">>scanningnetwork.txt
echo "nc">>scanningnetwork.txt
echo "***************************************************">>scanningnetwork.txt
echo "***************************************************">>scanningnetwork.txt
echo "nc -nvz 192.168.0.1 80 ---specific port n-ip,z-scanning,-v-verbose">>scanningnetwork.txt
nc -nvz 192.168.0.1 80>>scanningnetwork.txt

echo "***************************************************">>scanningnetwork.txt
echo "***************************************************">>scanningnetwork.txt
echo "netdiscover">>scanningnetwork.txt
echo "***************************************************">>scanningnetwork.txt
echo "***************************************************">>scanningnetwork.txt
echo "netdiscover -r 192.168.0.0/24 --r for cidr notation">>scanningnetwork.txt
netdiscover -r 192.168.0.0/24>>scanningnetwork.txt
echo "netdiscover -p ---stealth mode">>scanningnetwork.txt
netdiscover -p>>scanningnetwork.txt

echo "***************************************************">>scanningnetwork.txt
echo "***************************************************">>scanningnetwork.txt
echo "dmitry">>scanningnetwork.txt
echo "***************************************************">>scanningnetwork.txt
echo "***************************************************">>scanningnetwork.txt
echo "***** dmitry -p intranet *****">>scanningnetwork.txt
dmitry -p intranet>>scanningnetwork.txt
echo "***** dmitry -p intranet -o plab.txt*****">>scanningnetwork.txt
dmitry -p intranet -o plab.txt>>scanningnetwork.txt

echo "***************************************************">>scanningnetwork.txt
echo "***************************************************">>scanningnetwork.txt
echo "extras">>scanningnetwork.txt
echo "***************************************************">>scanningnetwork.txt
echo "***************************************************">>scanningnetwork.txt
echo "hping3 192.168.0.1 --icmp - discovery of single host">>scanningnetwork.txt
hping3 192.168.0.1 --icmp>>scanningnetwork.txt