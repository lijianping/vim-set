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

cp -r vim $HOME/.vim

git clone https://github.com/gmarik/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim

if [ "$?" -ne "0" ]; then
	echo "git clone error, please check if you install git tool"
	exit 1
fi

echo "cp .vimrc to $HOME "
cp vimrc $HOME/.vimrc
