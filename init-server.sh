#! /bin/bash
#user add
#set password
#set as sudoer
#add access without password

echo "starting..."
echo "Please enter root password for the new server:"
read root_password
echo "Please enter new server hostname or ip:"
read server_ip
ssh root@$server_ip -p $root_password "hostname"


   useradd admin
   21  passwd admin
   22  vi /etc/sudoers



   ssh-keygen -t rsa -N ""
   cat /home/admin/id_rsa.pub >> ~/.ssh/authorized_keys
   chmod 700 ~/.ssh
   chmod 600 ~/.ssh/authorized_keys
   restorecon -Rv ~/.ssh

new_username=admin
new_password=Aa123456
yum install ntp
ntpdate pool.ntp.org
echo "$new_password" | passwd --stdin "$new_username"
echo "$new_username ALL=(ALL) NOPASSWORD:ALL" >> /etc/sudoers