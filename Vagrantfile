# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.synced_folder ".", "/vagrant", type: "virtualbox"
  if Vagrant.has_plugin?("vagrant-cachier")
    config.cache.scope = :box
  end
  config.vm.define :tdd do |vmb|
    vmb.vm.box = "archlinux/archlinux"
    vmb.vm.provider "virtualbox" do |v|
      v.memory = 512
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]  	  
    end
    vmb.vm.hostname = "arch"
    vmb.vm.network "private_network", ip: "10.100.100.110"
	vmb.vm.provision :shell, path: "scripts/bootstrap.sh"
  end
end
