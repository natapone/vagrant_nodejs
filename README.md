# Description
Ubuntu based with Node JS installed for testing Blockchain

# Setup
Create folders

- Blockchain
    - Project
        - Blockchain project folder
    - vagrant_nodejs
    - vagrant_nodejs_1
    - vagrant_nodejs_2

# Config
1. Open vagrant/Vagrantfile
2. Change port forwarded_port, private_network for each node
    - config.vm.network "forwarded_port", guest: 3001, host: 3001
    - config.vm.network "forwarded_port", guest: 6001, host: 6001
    - config.vm.network "private_network", ip: "33.33.33.1"

# Run
$ cd vagrant
$ vagrant up
