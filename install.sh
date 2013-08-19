#!/bin/bash 

if [ ! -e /usr/local/bin/ctags ]; then
    echo "Start Install Ctags..."
    tar zxvf ctags-5.8.tar.gz
    cd ctags-5.8  
    ./configure && make
    sudo make install 
	cd ..
fi

# Install cscope plugin
if [ ! -e /usr/local/bin/cscope ]; then
	sudo apt-get install libncurses5-dev
	echo "Install cscope plugin ..."
	tar zxvf cscope-15.8a.tar.gz
	cd cscope-15.8a 
	./configure && make
	sudo make install
	cd ..
fi

echo "cp .vim to $HOME "
cp -r .vim $HOME

echo "cp .vimrc to $HOME "
cp .vimrc $HOME
