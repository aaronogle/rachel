# RaCHeL Project
Started for Rolling Hills Consolidated Library for their childrens computers.

## Client Install

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


## Server Install
Requirements: PHP, MySQL, Python

The server install is like pretty much every other php product, except I don't have a pretty little installer.

Using phpmyadmin or your tool of choice insert the rachel.sql from the server folder.

Then change the info in db.php to match your database.

Then simply pop the code into your web root. 

Access admin interface at http://[your-ip]/admin.php

Currently the interface is very basic, if you need security look at adding password protect to an .htaccess.  Security will be added in the future.
