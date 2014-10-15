#!/usr/bin/env bash

# Install git
\curl -sSL https://get-git.rvm.io | sudo bash

# Install RVM
\curl -sSL https://get.rvm.io | sudo bash -s stable

# Install some Rubies
source "/usr/local/rvm/scripts/rvm"
command rvm install jruby
usermod -G rvm root
echo "source /etc/profile.d/rvm.sh" >> $HOME/.bashrc
source /etc/profile.d/rvm.sh
rvm use jruby --default
