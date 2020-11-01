!#/bin/bash

echo Enter the IP address of the ISE node: 
read NODE

echo Enter your username: 
read USER

echo Enter your password: 
read $PASSWORD

apt-get update -y && apt-get upgrade -y
apt-get install python3 -y
apt-get install python3-pip -y && apt-get install python3-venv -y

mv ./telegraf/* /etc/telegraf/telegraf.d
mkdir /etc/telegraf/scripts
mv ./scripts/* /etc/telegraf/scripts

python3 -m venv env3
mkdir /opt/telegraf
cd /opt/telegraf
python3 -m venv env3
source env3/bin/activate
pip3 install requests

cd /etc/telegraf/telegraf.d

grep -rl "{{ISENODE}}" . | xargs sed -i 's/{{ISENODE}}/$NODE/g'
grep -rl "{{PORT}}" . | xargs sed -i 's/{{PORT}}/9060/g'
grep -rl "{{USER}}" . | xargs sed -i 's/{{USER}}/$USER/g'
grep -rl "{{PASSWORD}}" . | xargs sed -i 's/{{PASSWORD}}/$PASSWORD/g'
