#!/bin/bash
#Set banner gugun

cd
# setting banner
rm /etc/issue.net
wget -O /etc/issue.net "https://raw.githubusercontent.com/gugun09/premscript/master/issue.net"
sed -i 's@#Banner@Banner@g' /etc/ssh/sshd_config
sed -i 's@DROPBEAR_BANNER=""@DROPBEAR_BANNER="/etc/issue.net"@g' /etc/default/dropbear
service ssh restart
service dropbear restart