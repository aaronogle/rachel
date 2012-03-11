#!/bin/bash

USER=rachel
PASS=rachel123

#Make sure script is run as root
if [ "$(id -u)" != "0" ]; then
        echo "This script must be run as root" 1>&2
        exit 1
fi

mv -i client/* .
rm -rf client server
chmod +x start-rachel
cp start-rachel /usr/bin
useradd $USER -m
expect << EOF
spawn passwd rachel
expect "New Password:"
send "${PASS}\r"
expect "Retype New Password:"
send "${PASS}\r"
expect eof;
EOF

usermod -a -G users,nopasswdlogin rachel
openssl genrsa 1024 > key openssl req -new -x509 -nodes -sha1 -days 365 -key key > cert
chmod -R 755 .
chown -R root.users .
apt-get install -y matchbox-window-manager
echo "autologin-user=rachel" >> /etc/lightdm/lightdm.conf
echo "autologin-user-timeout=25" >> /etc/lightdm/lightdm.conf

mv xsession /home/rachel/.xsession
ln -s /home/rachel/.xsession /home/rachel/.xinitrc
mv dmrc /home/rachel/.dmrc
chown -R  rachel.users /home/rachel/
touch log
chmod 777 log
mv rachel.desktop /usr/share/xsessions/
/usr/lib/lightdm/lightdm-set-defaults -s rachel
read -p "Please enter ip address to the rachel server Ex: [10.10.10.48]"
echo $REPLY >> rachel.config
chmod 755 rachel.config
chown root.users rachel.config
