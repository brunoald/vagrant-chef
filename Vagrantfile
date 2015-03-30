VAGRANTFILE_API_VERSION = '2'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = 'ubuntu/precise32'
  config.vm.network 'forwarded_port', guest: 8080, host: 8080
  config.omnibus.chef_version = :latest
  config.vm.provision 'chef_solo' do |chef|
    chef.add_recipe 'jenkins'
  end
end
