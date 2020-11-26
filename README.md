# vagrant-lab-example
Just a template lab using vagrant and ansible.

Requirements:
  - Vagrant
  - VirtualBox
  - 4 Core CPU (min)
  - 16GB Memory (min)
  - 300GB Storage (min)

 Creates 5 Virtual Machines:
  - Ansible Controller (Ubuntu with Ansible, Playbooks, and Hosts configured)
  - Kali Box (Rolling Kali instance, GUI enabled by default)
  - Windows Box (Windows 10 instance, joined to domain)
  - DC Server (Windows 2019 instance, DC "lab.example.local")
  - Elastic Server (Ubuntu with elastic stack, configured for winlogbeat)

Addresses:
  - ansible-controller:       172.16.10.55
  - win10.lab.example.local:  172.16.10.57
  - dc01.lab.example.local:   172.16.10.5
  - elastic:                  172.16.10.10
  - kali-box:                 172.16.10.56

  TODO:
  // Join Win10 box to domain
  // Install WinLogBeat on DC and Win10 box
  // Add more ansible plays to install software
