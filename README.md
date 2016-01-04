# haproxy-basic-lab
In support of the blog post at:
http://sabotage-networks.blogspot.co.uk/2016/01/vagrant-lab-for-haproxy.html

This sets up a basic lab for testing HAProxy with:
 - 2 x Apache/PHP Webservers
 - 1 x HAProxy Load Balancer

Needs Virtualbox and Vagrant installed. Virtualbox should have a host-only network configured using the 172.28.128.0/24 network.

Download files and run "vagrant up" in the directory
