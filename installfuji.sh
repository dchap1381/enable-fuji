#!/bin/bash
# Enable Fujitsu printer on USB using Citizen driver

lpadmin -p Fujitsu -E -v usb://FIT/FP-2000?serial=0 -m CBM1000.ppd

# Create script to enable Fuji printer

echo "#!/bin/bash" > /home/pi/enable-fujitsu.sh
echo "lpadmin -d Fujitsu" >> /home/pi/enable-fujitsu.sh
chmod +x /home/pi/enable-fujitsu.sh

# Create script to enable Epson printer

echo "#!/bin/bash" > /home/pi/enable-epson.sh
echo "lpadmin -d EpsonT88" >> /home/pi/enable-epson.sh
chmod +x /home/pi/enable-epson.sh
