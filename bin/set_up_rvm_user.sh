#!/usr/bin/env bash
# Add the user to the rvm group
usermod -G rvm $1

# Add the rvm line to the user's .bashrc so rvm is available at login
echo "source /etc/profile.d/rvm.sh" >> $HOME/.bashrc

# Get rvm going for this login
source /etc/profile.d/rvm.sh

# Pick jRuby and set it as the default Ruby
rvm use jruby --default
