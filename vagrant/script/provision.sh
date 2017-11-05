
# This function is called at the very bottom of the file
main() {
    update_go
    util_go
    nodejs_go
    autoremove_go
}

util_go() {
    sudo apt-get install -y curl
}

nodejs_go() {
    curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
    sudo apt-get install -y nodejs
    sudo apt-get install -y build-essential
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
