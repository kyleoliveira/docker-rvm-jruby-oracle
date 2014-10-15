#!/usr/bin/env bash
# Provided by the RVM folks as a way to do a multi-user setup.
# If you want to add users other than root, you'll need to run
# the script below* for that user.

# Install git
\curl -sSL https://get-git.rvm.io | sudo bash

# Install RVM
\curl -sSL https://get.rvm.io | sudo bash -s stable

# Install some Rubies
source "/usr/local/rvm/scripts/rvm"
command rvm install jruby

# * Set the ruby defaults for root and start using jRuby
source /root/set_up_rvm_user.sh root
