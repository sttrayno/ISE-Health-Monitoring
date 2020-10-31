!#/bin/bash
apt-get update -y && apt-get upgrade -y
apt-get install python3 -y
apt-get install python3-pip -y && apt-get install python3-venv -y
python3 -m venv env3
mkdir /opt/telegraf
cd /opt/telegraf
python3 -m venv env3
source env3/bin/activate
pip3 install requests
mv ./telegraf/* /etc/telegraf/telegraf.d
mkdir /etc/telegraf/scripts
mv ./scripts/* /etc/telegraf/scripts
