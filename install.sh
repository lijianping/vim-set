#!/bin/bash 

if [ ! -e /usr/local/bin/ctags ]; then
	echo "Start Install Ctags..."
	tar zxvf ctags-5.8.tar.gz
	cd ctags-5.8  
	./configure && make 
	sudo make install 
	cd ..
	rm -rf ctags-5.8
fi

if [ ! -d .vim ]; then
	echo "create .vim dir"
	mkdir $HOME/.vim
fi

echo "cp .vimrc to $HOME "
cp vimrc $HOME/.vimrc
