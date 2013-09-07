# encoding: utf-8

# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.box = 'precise32'
  config.vm.box_url = 'http://files.vagrantup.com/precise32.box'

  {
    memory: 512,
    cpus: 2,
    ioapic: 'on'
  }.each do |k, v|
    config.vm.customize ['modifyvm', :id, "--#{k}", v]
  end

  config.vm.forward_port 3005, 3005

  config.ssh.forward_agent = true

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = ["cookbooks"]
    chef.add_recipe :apt
    chef.add_recipe 'sqlite'
    chef.add_recipe 'git'
    chef.add_recipe 'rvm::vagrant'
    chef.add_recipe 'rvm::system'
    chef.add_recipe 'nginx'
    chef.json = {
      :rvm => {
        :default_ruby => 'ruby-2.0.0-p247@dima'
      },
      :git   => {
        :prefix => "/usr/local"
      },
      :nginx => {
        :dir                => "/etc/nginx",
        :log_dir            => "/var/log/nginx",
        :binary             => "/usr/sbin/nginx",
        :user               => "www-data",
        :init_style         => "runit",
        :pid                => "/var/run/nginx.pid",
        :worker_connections => "1024"
      }
    }
  end

  config.vm.provision :shell, :path => 'vagrant_scripts/after_script.sh'
end
