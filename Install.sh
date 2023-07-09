#!/bin/bash

# Update package repositories
pkg update -y
pkg upgrade -y

# Install essential packages
pkg install -y wget curl git zip unzip python python-dev python2 python2-dev openssl libffi libjpeg-turbo libjpeg-turbo-dev libcrypt-dev libxml2 libxslt readline readline-dev libsqlite-dev pkg-config autoconf automake make cmake clang libffi-dev libxslt-dev libxml2-dev libtool openssl-tool libgrpc-dev libcrypt-dev freetype-dev libpng-dev termux-tools

# Install additional useful packages
pkg install -y nano vim tree htop ncdu httpie dnsutils net-tools openssh openssl-tool tmux

# Install Ruby and Ruby Gems
pkg install -y ruby
gem install bundler

# Install Node.js and npm
pkg install -y nodejs

# Install Go language
pkg install -y golang

# Install Rust language
pkg install -y rust

# Install PHP and Composer
pkg install -y php composer

# Install Ruby packages
gem install colorize lolcat

# Install Python packages
pip install --upgrade pip
pip install setuptools wheel

# Clean up
pkg autoclean
pkg clean

# Display completion message
echo ""
echo "All important packages have been installed successfully!"
echo ""

# Refresh Termux environment
source $HOME/.bashrc
