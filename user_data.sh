#!/bin/bash
echo 'Begin downloading required packages'
sudo yum update -y
sudo yum install ruby -y
sudo yum install wget
wget https://dl.google.com/go/go1.13.5.linux-amd64.tar.gz 
sudo tar -C /usr/local -xzf go1.13.5.linux-amd64.tar.gz
mkdir go-workspace
echo 'End downloading required packages'
echo 'Begin setting go path'
echo "export PATH=$PATH:/usr/local/go/bin" >> /etc/profile
echo "export GOPATH=~/go-workspace" >> /etc/profile
source /etc/profile
echo 'End setting go path'
echo 'Begin installing code deploy'
wget https://aws-codedeploy-eu-west-1.s3.amazonaws.com/latest/install
chmod +x ./install
sudo ./install auto
echo 'End installing code deploy'