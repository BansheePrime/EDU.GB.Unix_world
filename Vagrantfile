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
    router.vm.hostname = "router-geek"
    router.vm.network "public_network", bridge: "enp3s0" # +sysctl -w net.inet.ip.forwarding=1
    router.vm.network "private_network", ip: "192.168.57.2"
    router.vm.network "private_network", ip: "192.168.58.2"
    router.vm.network "forwarded_port", guest: 80, host: 8181

    router.vm.provision "shell",
    inline: <<-SHELL
      echo -e "\nnet.ipv4.ip_forward=1" >> /etc/sysctl.conf
      sysctl -p
      # echo net.ipv4.ip_forward=1 | tee -a /etc/sysctl.conf && sysctl -p
      apk add net-tools
      apk add mtr
      apk add nmap
    SHELL
  end

  # rouge vm
  config.vm.define "sword" do |sword|
    # sword.vm.box = "alpine317-py"
    sword.vm.hostname = "sword57-geek20"   
    sword.vm.network "private_network", ip: "192.168.57.20"
    sword.vm.provision "shell", path: "default-gw57.sh"
  end

# loot cache
  config.vm.define "shield" do |shield|
    # shield.vm.box = "alpine317-py"
    shield.vm.hostname = "shield58-geek20"
    shield.vm.network "private_network", ip: "192.168.58.20"
    shield.vm.provision "shell", path: "nginx_installation.sh"
    shield.vm.provision "shell", path: "default-gw58.sh"
    shield.vm.provision "shell", path: "firewall_setup.sh"
  end

  # ansible check
  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "playbook.yml"
    ansible.become = true
  end
end
