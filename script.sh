#!/bin/bash
# apt sources
sudo echo "deb http://ftp.debian.org/debian/ stretch main contrib" > /etc/apt/sources.list
sudo echo "deb http://nightly.odoo.com/11.0/nightly/deb/ ./"      >> /etc/apt/sources.list

# let's get the latest catalog of packages
sudo apt-get update

# let's get the latest version of software on the OS
sudo apt-get upgrade

# Install packages
sudo apt-get --yes --force-yes install debconf-utils git odoo
