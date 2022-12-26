# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  # General Vagrant VM configuration
  config.vm.box = "alpine317-py"
  config.vm.synced_folder '.', '/vagrant'
  config.ssh.insert_key = false

  config.vm.provider "virtualbox" do |vb|
    vb.memory = 1024
    vb.cpus = 1
    vb.linked_clone = true
  end

  # router configuration
  config.vm.define "router" do |router|
    # router.vm.box = "alpine317-py"
    router.vm.network "public_network", bridge: "enp3s0" # +sysctl -w net.inet.ip.forwarding=1
    router.vm.network "private_network", ip: "192.168.57.1"
    router.vm.network "private_network", ip: "192.168.58.1"
    router.vm.network "forwarded_port", guest: 80, host: 8181

    router.vm.provision "shell",
    inline: <<-SHELL
      echo -e "\nnet.ipv4.ip_forward=1" >> /etc/sysctl.conf
      sysctl -p
      # echo net.ipv4.ip_forward=1 | tee -a /etc/sysctl.conf && sysctl -p
    SHELL
  end

  # rouge vm
  config.vm.define "sword" do |sword|
    # sword.vm.box = "alpine317-py"    
    sword.vm.network "private_network", ip: "192.168.57.20"

    sword.vm.provision "shell", path: "default-gw57.sh"

  end

# loot cache
  config.vm.define "prize" do |prize|
    # prize.vm.box = "alpine317-py"    
    prize.vm.network "private_network", ip: "192.168.58.20"
    
    prize.vm.provision "shell", path: "default-gw58.sh"
  end

  # ansible check
  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "playbook.yml"
    ansible.become = true
  end
end
