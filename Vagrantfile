# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
    # box 'test-field'
    config.vm.define "test" do |test|
      test.vm.box = "eurolinux9"
      test.vm.synced_folder 'development/', '/opt/devops'
      web.ssh.insert_key = false
  
      test.vm.provider "virtualbox" do |v|
        v.name = "test-geek"
        v.memory = 2048
        v.cpus = 2
      end
  
      test.vm.hostname = "test-geek"
      test.vm.network :private_network, ip: "192.168.61.22" 
      test.vm.network "forwarded_port", guest: 80, host: 8181
      test.vm.provision "ansible" do |ansible|
        ansible.playbook = "playbook.yml"
        ansible.become = true
      end
    end
  end