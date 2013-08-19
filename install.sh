#!/bin/bash 

echo "Start Install Ctags..."
tar zxvf ctags-5.8.tar.gz
cd ctags-5.8  
./configure && make

sudo make install 

echo "cp .vim to $HOME "
cp -r .vim $HOME

echo "cp .vimrc to $HOME "
cp .vimrc $HOME
