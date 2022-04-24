#!/bin/sh

set -e

echo "Installing common gem packages"

# Install various Python packages I usually want
gem install \
    bundler \
    jekyll
