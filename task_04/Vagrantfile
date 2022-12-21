# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
    # box 'web'
    config.vm.define "web" do |web|
      web.vm.box = "centos7"
      web.vm.synced_folder '.', '/vagrant', disabled: true
      web.ssh.insert_key = false
  
      web.vm.provider "virtualbox" do |v|
        v.name = "centos7-geek"
        v.memory = 1024
        v.cpus = 1
      end
  
      web.vm.hostname = "centos7-geek"
      #config.vm.network "public_network", bridge: "eth0", ip: "192.168.60.11"
      web.vm.network :private_network, ip: "192.168.60.11" 

      web.vm.provision "ansible" do |ansible|
        ansible.playbook = "playbook.yml"
        ansible.become = true
      end
    end
  
    # box 'lab'
    config.vm.define "lab" do |lab|
      lab.vm.box = "ubuntu2004"
      lab.vm.synced_folder '.', '/vagrant', disabled: true
      lab.ssh.insert_key = false

      lab.vm.provider "virtualbox" do |v|
        v.name = "ubuntu-geek"
        v.memory = 1024
        v.cpus = 1
      end

      lab.vm.hostname = "ubuntu-geek"
      #config.vm.network "public_network", bridge: "eth0", ip: "192.168.60.11"
      lab.vm.network :private_network, ip: "192.168.60.12" 

      lab.vm.provision "ansible" do |ansible|
        ansible.playbook = "playbook.yml"
        ansible.become = true
      end
    end
  
  end
