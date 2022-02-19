#!/bin/sh

set -e

# Install various packages I usually want
sudo dnf install \
     aspell-en \
     clang-tools-extra \
     cmake \
     discount \
     emacs \
     git \
     llvm-toolset \
     mercurial \
     the_silver_searcher \
     thunderbird \
     tmux \
     -y
