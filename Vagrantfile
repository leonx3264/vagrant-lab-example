# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  #ansible controller
  config.vm.define "Ansible-Controller" do |ansible|
    ansible.vm.box = "hashicorp/bionic64"
    ansible.vm.network "private_network", ip: "172.16.10.55",
      virtualbox__intnet: true
    ansible.vm.hostname = "ansible-controller"
    ansible.vm.provider "virtualbox" do |vb|
      vb.gui = false
      vb.name = "ansible"
      vb.cpus = 1
      vb.memory = 1024
    end
    ansible.vm.synced_folder "./Playbooks", "/home/vagrant/Playbooks"
    ansible.vm.provision "shell", path: "Scripts/Setup-Ansible.sh"
  end

  #windows 10 instance
  config.vm.define "Windows-Box" do |win|
    win.vm.box = "gusztavvargadr/windows-10"
    win.vm.network "private_network", ip: "172.16.10.57",
      virtualbox__intnet: true
    win.vm.hostname = "win10"
    win.vm.provider "virtualbox" do |vb|
      vb.gui = false
      vb.name = "windows-box"
      vb.cpus = 2
      vb.memory = 2048
    end
    win.vm.provision "shell", path: "Scripts/Setup-WinRM.ps1"
  end


  #domain controller server
  config.vm.define "DC-Server" do |dc|
    dc.vm.box = "gusztavvargadr/windows-server"
    dc.vm.network "private_network", ip: "172.16.10.5",
      virtualbox__intnet: true
    dc.vm.hostname = "dc01"
    dc.vm.provider "virtualbox" do |vb|
      vb.gui = false
      vb.name = "dc-01"
      vb.cpus = 2
      vb.memory = 4096
    end
    dc.vm.provision "shell", path: "Scripts/Setup-WinRM.ps1"
  end

  #elastic server
  config.vm.define "Elastic-Server" do |elastic|
    elastic.vm.box = "hashicorp/bionic64"
    elastic.vm.network "private_network", ip: "172.16.10.10",
      virtualbox__intnet: true
    elastic.vm.hostname = "elastic"
    elastic.vm.provider "virtualbox" do |vb|
      vb.gui = false
      vb.name = "elastic-server"
      vb.cpus = 2
      vb.memory = 4096
    end
  end

  #kali instance
  config.vm.define "Kali-Box" do |kali|
    kali.vm.box = "kalilinux/rolling"
    kali.vm.network "private_network", ip: "172.16.10.56",
      virtualbox__intnet: true
    kali.vm.hostname = "kali-box"
    kali.vm.provider "virtualbox" do |vb|
      vb.gui = true
      vb.name = "kali-box"
      vb.cpus = 2
      vb.memory = 2048
    end
  end

end
