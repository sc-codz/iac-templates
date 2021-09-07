sudo apt update

sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt -y install python3-pip

#install ansible
sudo apt -y install ansible

#install azure required modules 
sudo pip3 install ansible[azure]
wget https://raw.githubusercontent.com/ansible-collections/azure/dev/requirements-azure.txt
sudo pip3 install -r requirements-azure.txt 