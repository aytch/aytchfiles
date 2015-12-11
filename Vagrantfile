# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.
  config.vm.box = "puppetlabs/centos-7.0-64-nocm"
  # config.vm.box_check_update = false
  config.vm.network "forwarded_port", guest: 80, host: 8080

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # config.vm.network "private_network", ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"
  config.vm.synced_folder "data", "/vagrant_data"

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
  config.vm.provider "virtualbox" do |vb|
    # Display the VirtualBox GUI when booting the machine
    vb.gui = false
    # Customize the amount of memory on the VM:
    vb.memory = "1024"
  end
  
  # Define a Vagrant Push strategy for pushing to Atlas. Other push strategies
  # such as FTP and Heroku are also available. See the documentation at
  # https://docs.vagrantup.com/v2/push/atlas.html for more information.
  # config.push.define "atlas" do |push|
  #   push.app = "YOUR_ATLAS_USERNAME/YOUR_APPLICATION_NAME"
  # end

  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
   config.vm.provision "shell", inline: <<-SHELL
     sudo yum update
     sudo yum install -y curl git ruby vim wget zsh
     usermod -s /bin/zsh vagrant
     git clone https://github.com/VundleVim/Vundle.vim.git /home/vagrant/.vim/bundle/Vundle.vim
     touch /home/vagrant/.vimrc
     curl https://raw.githubusercontent.com/aytch/aytchfiles/master/vimrc >> /home/vagrant/.vimrc
     touch /home/vagrant/.zshrc
     curl https://raw.githubusercontent.com/aytch/aytchfiles/master/zshrc >>  /home/vagrant/.zshrc
     cd /home/vagrant/
     chown -R vagrant:vagrant /home/vagrant/.vim
     chown vagrant:vagrant /home/vagrant/.vimrc
     chown vagrant:vagrant /home/vagrant/.zshrc
     runuser -l vagrant -c 'vim +PluginInstall +qall'
     exit
   SHELL
end
