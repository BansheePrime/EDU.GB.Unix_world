# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
    # box 'client'
    config.vm.define "client" do |client|
      client.vm.box = "ubuntu1804"
      client.vm.hostname = "ubuntu-geek"
      client.vm.network :private_network, ip: "192.168.61.21"
      client.vm.synced_folder "development/", "/opt/devops"
      # client.ssh.insert_key = false
  
      client.vm.provider "virtualbox" do |v|
        v.name = "ubuntu-geek"
        v.memory = 1024
        v.cpus = 1
      end

    end
  
    # box 'server'
    config.vm.define "server" do |server|
      server.vm.box = "alpine317-py-repack"
      server.vm.hostname = "alpine-geek"
      server.vm.network "private_network", ip: "192.168.61.20"
      server.vm.network "forwarded_port", guest: 8181, host: 8181
      server.vm.synced_folder "development/", "/opt/devops"
    
      server.vm.provider "virtualbox" do |v|
        v.name = "alpine-geek"
        v.memory = 1024
        v.cpus = 1
      end
      
      # server.vm.provision "shell", :run => "always", inline: <<-SHELL
      #   apk update
      #   apk add python3
      #   SHELL
        
    # ansible playbook for both vm's
    config.vm.provision "ansible" do |ansible|
      ansible.playbook = "playbook.yml"
    end

  end

end