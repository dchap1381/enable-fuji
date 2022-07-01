#!/bin/bash
# Enable Fujitsu printer on USB using Citizen driver

lpadmin -p Fujitsu -E -v usb://FIT/FP-2000?serial=0 -m CBM1000.ppd

#Create script to enable Fuji printer

echo "#!/bin/bash" > /home/pi/enable-fujitsu.sh
echo "lpadmin -d Fujitsu" >> /home/pi/enable-fujitsu.sh
chmod +x /home/pi/enable-fujitsu.sh

# Create script to enable Epson printer

echo "#!/bin/bash" > /home/pi/enable-epson.sh
echo "lpadmin -d EpsonT88" >> /home/pi/enable-epson.sh
chmod +x /home/pi/enable-epson.sh

### added 12-10-21 by dcc ###
# Enable Citizen CT-S310II printer on USB using CT-S310II specific driver

lpadmin -p Citizen -E -v usb://CITIZEN/CT-S310II?serial=00000000 -m CTS310II.ppd

# Create script to enable Citizen CT-S310II

echo "#!/bin/bash" > /home/pi/enable-citizen.sh
echo "lpadmin -d Citizen" >> /home/pi/enable-citizen.sh
chmod +x /home/pi/enable-citizen.sh
