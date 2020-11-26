#!/bin/bash

apt-get update
apt-get install ansible python-pip sshpass -y
if ! [ -L /etc/ansible ]; then
  rm -rf /etc/ansible
  ln -fs /vagrant/ansible /etc/ansible
fi
pip install pywinrm
