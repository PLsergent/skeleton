# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  config.vm.define "app-dev" do |config|
    config.vm.box = "ubuntu/bionic64"
    config.vm.provision "shell", path: "delivery/dev-env/add_user.sh"
    config.vm.provider "virtualbox" do |vb|
      vb.memory = "2024"
    end
    # config.vm.network "private_network", ip: "192.168.70.69"
    config.vm.synced_folder "~/devs", "/sources"
    # Change user when connecting with ssh
    VAGRANT_COMMAND = ARGV[0]
    if VAGRANT_COMMAND == "ssh"
      config.ssh.username = "app-dev"
    end
  end
end