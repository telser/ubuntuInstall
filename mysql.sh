# Installing mysql 5.6 can break dpkg unfortunately!
# When dpkg breaks, do:
# reboot machine
# sudo dpkg --configure -a
# sudo apt-get upgrade
# Then re-run this script!

# Enable & start mysql
sudo systemctl enable mysql
sudo systemctl start mysql
sudo systemctl status mysql
