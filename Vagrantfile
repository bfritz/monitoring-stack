# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "debian/jessie64"
  config.vm.synced_folder "salt/roots/salt/", "/srv/salt/"

  config.vm.provision :salt do |salt|
    salt.run_highstate = true
    salt.minion_config = "salt/roots/salt/minion.conf"
    salt.bootstrap_script = "salt/bootstrap-salt.sh"
  end

  config.vm.network :forwarded_port, guest: 8080, host: 8080, protocol: 'tcp'
  config.vm.network :forwarded_port, guest: 2003, host: 2003, protocol: 'tcp'

  if (Vagrant.has_plugin?("vagrant-cachier"))
    # cache buckets are per-box, not per-machine
    config.cache.scope = :box
  end
end
