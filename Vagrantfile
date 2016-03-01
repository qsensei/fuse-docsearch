# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.network "private_network", ip: "192.168.33.10"

  config.vm.synced_folder ".", "/vagrant", type: "nfs"

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "2048"
  end

  config.vm.provision "shell", inline: <<-SHELL
    [ ! -f /usr/bin/docker ] && \
      curl -fsSL https://get.docker.com/ | sh && \
      usermod -aG docker vagrant

    apt-get update
    apt-get install python-pip -y && pip install docker-compose
  SHELL
end
