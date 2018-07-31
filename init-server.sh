#! /bin/bash
#user add
#set password
#set as sudoer
#add access without password

echo "starting..."
echo "Please enter root password for the new server:"
read root_password
echo "Please enter admin password for the new server:"
read admin_password
echo "Please enter new server hostname or ip:"
read server_ip
sshpass -p $root_password scp files/init/init1.sh root@$server_ip:/tmp/init1.sh
sshpass -p $root_password ssh root@$server_ip "bash /tmp/init1.sh"
sshpass -p $admin_password scp files/init/init2.sh admin@$server_ip:/tmp/init2.sh
sshpass -p $admin_password scp ~/.ssh/id_rsa.pub admin@$server_ip:/tmp/id_rsa.pub
sshpass -p $admin_password ssh admin@$server_ip "bash /tmp/init2.sh"

   # useradd admin
   # 21  passwd admin
   # 22  vi /etc/sudoers



   # 
# new_username=admin
# new_password=Aa123456
# yum install ntp
# ntpdate pool.ntp.org
# echo "$new_password" | passwd --stdin "$new_username"
# echo "$new_username ALL=(ALL) NOPASSWORD:ALL" >> /etc/sudoers