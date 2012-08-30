# RaCHeL Project
Started for Rolling Hills Consolidated Library for their childrens computers.

## Install Instructions as of - 09/30/2012

Made the install process pretty straight forward.
```Bash
sudo apt-get install -y git expect
cd /opt/
sudo git clone git://github.com/aaronogle/rachel.git
cd rachel
sudo ./installclient.sh
```
When it shows the password stuff ignore it. Its auto entering a password. 
If you want your own secure password, simply run "sudo passwd rachel" after the install is finished. 
I would recommend doing this. You should never need to use the password.