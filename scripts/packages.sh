#!/bin/sh

set -e

# Install various packages I usually want
sudo dnf install \
     aspell-en \
     clang-tools-extra \
     cmake \
     emacs \
     git \
     llvm-toolset \
     mercurial \
     the_silver_searcher \
     thunderbird \
     tmux \
     -y
