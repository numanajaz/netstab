#!bin/bash/

echo "5"
echo '0000' | sudo -S sudo ssh -i "netstab.pem" ec2-user@ec2-3-134-29-204.us-east-2.compute.amazonaws.com 'python3 server.py'

