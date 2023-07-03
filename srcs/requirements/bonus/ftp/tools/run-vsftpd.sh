#! /bin/bash

adduser $FTP_USER --disabled-password --gecos "" --home /home/$FTP_USER --shell /bin/ash

echo "$FTP_USER:$FTP_PASS" | chpasswd > /dev/null 

echo "local_root=/home/$FTP_USER" >> /etc/vsftpd/vsftpd.conf

chgrp -R $FTP_USER /home/$FTP_USER
chown -R $FTP_USER /home/$FTP_USER
chmod -R +x /home/$FTP_USER

vsftpd /etc/vsftpd/vsftpd.conf
