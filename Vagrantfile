
# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "notes" 
  config.vm.network :forwarded_port, guest: 80, host: 8080
  config.vm.network :forwarded_port, guest: 8080, host: 8888
  config.vm.provision :puppet do |puppet| 
    puppet.manifests_path = "puppet/manifests" 
    puppet.module_path = "puppet/modules"
    puppet.manifest_file = "site.pp"
  end  
end



