Vagrant.configure('2') do |config|
  config.vm.box = 'ubuntu/jammy64'
  config.vm.hostname = 'locust'
  config.vm.network :forwarded_port, guest: 8089, host: 8089
  config.vm.network 'private_network', type: 'dhcp'
  config.vm.provision :shell, path: 'examples/vagrant/vagrant.sh'
end
