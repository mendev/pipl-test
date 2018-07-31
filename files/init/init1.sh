#! /bin/bash
echo "Please enter admin password for the new server:"
read admin_password
yum install -y ntp
ntpdate pool.ntp.org
useradd admin
echo "$admin_password" | passwd --stdin "admin"
echo "admin ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers