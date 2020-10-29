!#/bin/bash
apt-get update && apt-get upgrade -y
apt-get install python3 -y
apt-get install python3-pip && apt-get install python3-venv -y
pip3 install requests
mv ./telegraf/* /etc/telegraf/telegraf.d
mkdir /etc/telegraf/scripts
mv ./scripts/* /etc/telegraf/scripts