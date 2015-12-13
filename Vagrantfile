# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.synced_folder ".", "/vagrant", type: "rsync"

  config.vm.network "forwarded_port", guest: 3000, host: 3000

  config.vm.provision "shell", privileged: false, path: "bootstrap.sh"
end
