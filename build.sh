#!/bin/bash
docker build -t ike:latest .
sudo cp ike.service /etc/systemd/system/
sudo systemctl enable /etc/systemd/system/ike.service
sudo systemctl start ike.service
until systemctl is-active ike
do
  sleep 1
done
sleep 5 #Give StrongSwan time to initialize
docker run -it --rm --volumes-from ike -e "HOST=`curl ifconfig.co`" ike generate-mobileconfig > ike.mobileconfig
