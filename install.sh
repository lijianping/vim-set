#!/bin/bash 

if [ ! -e /usr/local/bin/ctag ]; then
    echo "Start Install Ctags..."
    tar zxvf ctags-5.8.tar.gz
    cd ctags-5.8  
    ./configure && make
    sudo make install 
fi

echo "cp .vim to $HOME "
cp -r .vim $HOME

echo "cp .vimrc to $HOME "
cp .vimrc $HOME
