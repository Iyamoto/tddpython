#!/bin/bash

set -e

echo "Starting bootstrap script"

sudo pacman -S --noconfirm puppet
sudo puppet module install puppetlabs-stdlib
sudo puppet apply /vagrant/puppet/bootstrap.pp
sudo pacman -Sc
