# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "debian/jessie64"

  config.vm.provision :salt do |salt|
    salt.run_highstate = true
    salt.minion_config = "salt/minion.conf"
    salt.bootstrap_script = "salt/bootstrap-salt.sh"
  end

  # server running monitoring stack
  config.vm.define :server do |server|
    server.vm.network "private_network", ip: "172.64.0.1"
    server.vm.synced_folder "salt/roots/server/", "/srv/salt/"
  end

  if (Vagrant.has_plugin?("vagrant-cachier"))
    # cache buckets are per-box, not per-machine
    config.cache.scope = :box
  end
end
