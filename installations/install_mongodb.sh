# From https://docs.mongodb.com/mongocli/stable/install/

### Install Gnupg before proceed with installation
sudo apt install gnupg

### Add public key to apt. This command doesn't worked for me.
wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | sudo apt-key add -
### Have to return OK.

### Create a list file for your edition of MongoDB.
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/4.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.2.list
### Do you know what are you doing?

### Reload the local package database and install.
sudo apt update
sudo apt install -y mongocli
mongocli help
### Do you see options list for mongocli?
