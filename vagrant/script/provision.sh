
# This function is called at the very bottom of the file
main() {
    update_go
    util_go
    nodejs_go
    autoremove_go
}

util_go() {
    apt-get install -y curl
}

nodejs_go() {
    curl -sL https://deb.nodesource.com/setup_13.x | sudo -E bash -

    sudo apt-get install -y gcc g++ make
    sudo apt-get install -y nodejs

    curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
    sudo apt-get update && sudo apt-get install yarn


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
