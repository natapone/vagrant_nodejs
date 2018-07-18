
# This function is called at the very bottom of the file
main() {
    update_go
    util_go
    nodejs_go
    npm_fix_path
    autoremove_go
}

util_go() {
    apt-get install -y curl
}

nodejs_go() {
    curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
    apt-get install -y nodejs
    apt-get install -y build-essential
}

npm_fix_path() {
    mkdir /home/vagrant/node_modules
    echo "export PATH=/home/vagrant/node_modules/bin:$PATH" >> /home/vagrant/.bashrc
    echo "npm config set prefix '/home/vagrant/node_modules'" >> /home/vagrant/.bashrc

    chown -R vagrant:vagrant /home/vagrant/node_modules

    # update 
    npm i npm@latest -g
}

update_go() {
    # Update the server
    apt-get -y upgrade
}

autoremove_go() {
    apt-get -y autoremove
}


main
exit 0
