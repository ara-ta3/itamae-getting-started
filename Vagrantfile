# -*- mode: ruby -*-
# vi: set ft=ruby :
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "CentOS-6.6"
  config.vm.box_url = "https://vagrantcloud.com/chef/boxes/centos-6.6/versions/1.0.0/providers/virtualbox.box"

  config.vm.provider :virtualbox do |vb|
    vb.name = "itamae-getting-started"
  end

  config.vm.define :web1 do |web|
    web.vm.network :private_network, ip: "192.168.33.101"
  end

  config.vm.provision :itamae do |config|
    config.sudo = true
    config.recipes = [
      'recipes/myrecipe.rb'
    ]
  end
end
