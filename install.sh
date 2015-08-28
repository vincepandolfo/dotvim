#!/bin/bash

rm ~/.vimrc
ln -s ~/.vim/.vimrc ~/.vimrc
git submodule update --init --recursive
./bundle/YouCompleteMe/install.sh
