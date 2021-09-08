sudo apt update

sudo add-apt-repository --yes --update ppa:ansible/ansible

#install python 3.8
sudo apt -y install python3.8

#install pip3
sudo apt -y install python3-pip

#At the time of writing this script, installing python3-pip will make pip3 default to python3.6
#Ansible will notify you that you need it requires python 3.8 or newer. An example of the warning is below

<#devuser@mydemo-vm:~$ ansible --version 
#[DEPRECATION WARNING]: Ansible will require Python 3.8 or newer on the controller starting with Ansible 2.12. Current version: 3.6.9 (default, Jan 26 2021, 15:33:00) [GCC 8.4.0]. This feature will be removed from ansible-core in version 2.12. Deprecation warnings can be disabled by setting deprecation_warnings=False in ansible.cfg.
#ansible [core 2.11.4] 
  #config file = /etc/ansible/ansible.cfg
  #configured module search path = ['/home/devuser/.ansible/plugins/modules', '/usr/share/ansible/plugins/modules']
  #ansible python module location = /usr/local/lib/python3.6/dist-packages/ansible
  #ansible collection location = /home/devuser/.ansible/collections:/usr/share/ansible/collections
  #executable location = /usr/local/bin/ansible
  #python version = 3.6.9 (default, Jan 26 2021, 15:33:00) [GCC 8.4.0]
  #jinja version = 2.10
  #libyaml = True

#notice that pip3 is pointing to python 3.6. We want to make this point to 3.8
#devuser@mydemo-vm:~$ pip3 -V
#pip 21.2.4 from /home/devuser/.local/lib/python3.6/site-packages/pip (python 3.6) 
#>

#fix this by changing python3 version to python3.8
sudo update-alternatives --install /usr/bin/python python /usr/bin/python2.7 2
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.8 3
sudo update-alternatives --config python3

#here is the syntax for update-altenatives --install command
#devuser@mydemo-vm:/usr/bin$ update-alternatives --install -help
#update-alternatives: --install needs <link> <name> <path> <priority>


#refresh bash
source ~/.bashrc

#update your PATH. Please note devuser is the administrator login id of my ubuntu 18.04 VM. Replace devuser with your admin user id.
export PATH="/home/devuser/.local/bin/:$PATH"

#install ansible
sudo apt -y install ansible

#install azure required modules 
sudo pip3 install ansible[azure]
wget https://raw.githubusercontent.com/ansible-collections/azure/dev/requirements-azure.txt
sudo pip3 install -r requirements-azure.txt 