#!/bin/bash

ln -s .vimrc ~/.vimrc
git submodule update --init --recursive
./bundle/YouCompleteMe/install.sh
