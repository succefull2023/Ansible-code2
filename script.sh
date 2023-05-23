#!/bin/bash
#install amazon ansible-ec2 plugin

sudo ansible-galaxy collection install amazon.aws
# install ansible with python3

sudo pip3 install ansible

#install boto3 and botocore
sudo pip3 install boto3 
#Install git 
sudo yum install git tree vim -y

#Clone my code 
sudo git clone https://github.com/kserge2001/ansible-code.git /tmp/code

#copy the code 
sudo cp -r /tmp/code/* /home/ec2-user 
# /home/ec2-user
# remove the cloned directory
sudo rm -rf /tmp/code
#add permission ownership on cloned files.
sudo chown -R ec2-user:ec2-user /home/ec2-user

