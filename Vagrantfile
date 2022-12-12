# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.define "server" do |server|
    server.vm.box = "alpine317-py-nginx"
    server.vm.hostname = "alpine-geek"
    server.vm.network "private_network", ip: "192.168.61.30"
    server.vm.network "forwarded_port", guest: 80, host: 8181
    server.vm.synced_folder "development/", "/opt/devops"
  
    server.vm.provider "virtualbox" do |v|
      v.name = "alpine-geek"
      v.memory = 1024
      v.cpus = 1
    end
    
  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "playbook.yml"
    end
  end
end