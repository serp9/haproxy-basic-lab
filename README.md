# haproxy-basic-lab
In support of the blog post at:
http://sabotage-networks.blogspot.co.uk/2016/01/vagrant-lab-for-haproxy.html

This sets up a basic lab for testing HAProxy with:
 - 2 x Apache/PHP Webservers
 - 1 x HAProxy Load Balancer

Needs Virtualbox and Vagrant installed. Virtualbox should have a host-only network configured using the 172.28.128.0/24 network.

Download files and run "vagrant up" in the directory


Or copy/paste this:
```
#install software
sudo apt-get install virtualbox vagrant git

#configure host-only subnet address in virtualbox
VBoxManage hostonlyif create
VBoxManage hostonlyif ipconfig vboxnet0 --ip 172.28.128.1 --netmask 255.255.255.0
VBoxManage dhcpserver modify --ifname vboxnet0 --ip 172.28.128.1 --netmask 255.255.255.0 --lowerip 172.28.128.100 --upperip 172.28.128.250

#install the lab files, for some reason the box fails to auto-download so install it manually, should be fixed in future
git clone https://github.com/unixhead/haproxy-basic-lab && cd haproxy-basic-lab 
vagrant box add hashicorp/precise32 https://vagrantcloud.com/hashicorp/boxes/precise32/versions/1.0.0/providers/virtualbox.box

#run the lab
vagrant up
```
