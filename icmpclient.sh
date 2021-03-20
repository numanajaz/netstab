#!bin/bash/

killall icmptunnel
echo "8"
cd icmptunnel
echo '0000' | sudo -S  ./icmptunnel 3.19.111.43 -d
echo '0000' | sudo -S  /sbin/ifconfig tun0 10.0.0.2 netmask 255.255.255.0
ssh -D 1080 -i netstab.pem ubuntu@10.0.0.1

