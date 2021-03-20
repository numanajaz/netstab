#!bin/bash/

echo "4"

echo "10. Port Redirection using Local Port Forwarding">>/home/blackjack/NetBeansProjects/netstabgui/src/main/java/report.odt
echo "___________________________________________________________________________________" >> /home/blackjack/NetBeansProjects/netstabgui/src/main/java/report.odt
echo " " >> /home/blackjack/NetBeansProjects/netstabgui/src/main/java/report.odt

chmod 400 netstab.pem
echo '0000' | sudo -S  ssh -f -N -i "netstab.pem" ec2-user@ec2-3-134-29-204.us-east-2.compute.amazonaws.com -o ExitOnForwardFailure=yes $SSH_HOST && \
echo "Test Verdict :	Port Forwarding Successful. Port Forwarding enabled. New IP through SSH Tunnel is: 3.134.29.204." >> /home/blackjack/NetBeansProjects/netstabgui/src/main/java/report.odt|| \
echo "Test Verdict :	Port Forwarding Failed. Port Forwarding disabled." >> /home/blackjack/NetBeansProjects/netstabgui/src/main/java/report.odt

echo " ">> /home/blackjack/NetBeansProjects/netstabgui/src/main/java/report.odt
echo " ">> /home/blackjack/NetBeansProjects/netstabgui/src/main/java/report.odt
echo " ">> /home/blackjack/NetBeansProjects/netstabgui/src/main/java/report.odt

bash proxy_reset.sh
