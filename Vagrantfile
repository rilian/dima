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

  config.ssh.forward_agent = true

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = ["cookbooks"]
    chef.add_recipe :apt
    chef.add_recipe 'ruby_build'
    chef.add_recipe 'rbenv::user'
    chef.add_recipe 'sqlite'
    chef.add_recipe 'git'
    chef.add_recipe 'nginx'
    chef.json = {
      :rbenv => {
        :user_installs => [
          {
            :user   => "vagrant",
            :rubies => [
              "2.0.0-p247"
            ],
            :global => "2.0.0-p247"
          }
        ]
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
end
