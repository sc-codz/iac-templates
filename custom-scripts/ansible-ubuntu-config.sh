sudo apt update

sudo add-apt-repository --yes --update ppa:ansible/ansible

#install python 3.8
sudo apt -y install python3.8

#install pip3
sudo apt -y install python3-pip


#Make sure to login to your VM and run this manually to finish configuring ansible on your ubuntu VM
#first check python and pip3 versions
#python -V; python3 -V; pip3 -V;

#then run below command
#ansible --version 

#then execute below commands to point update default python to python3.8 
#sudo update-alternatives --install /usr/bin/python python /usr/bin/python2.7 2
#sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.8 3
#sudo update-alternatives --config python3

#then run below command to install ansible
#sudo apt -y install ansible

#then install azure ansible modules by running below commands
#sudo pip3 install ansible[azure]
#wget https://raw.githubusercontent.com/ansible-collections/azure/dev/requirements-azure.txt
#sudo pip3 install -r requirements-azure.txt 



#at the time of this writing, the pycrypto package (a collection of secure hash functions such as SHA256) does not get installed automatically with python3.7+
#to fix this, follow this instructions below reported on their github issue ticket page
#https://github.com/pycrypto/pycrypto/issues/298

#$ cd /usr/lib/python3/dist-packages/
#sudo wget https://ftp.dlitz.net/pub/dlitz/crypto/pycrypto/pycrypto-2.7a1.tar.gz 
#tar -zxvf pycrypto-2.7a1.tar.gz 
#mv Crypto Crypto_
#mv pycrypto-2.7a1 Crypto