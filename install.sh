#!/bin/bash 

which ctags >/dev/null
if [ "$?" -ne "0" ]; then
	echo "Start Install Ctags..."
	tar zxvf ctags-5.8.tar.gz
	cd ctags-5.8  
	./configure && make 
	sudo make install 
	cd ..
	rm -rf ctags-5.8
fi

cp -r vim $HOME/.vim

which git >/dev/null
if [ "$?" -ne "0" ]; then
	echo "Can not find git tool, Please check if you install git tool"
	exit 1
fi

which cscope >/dev/null
if [ "$?" -ne "0" ]; then
	echo "You should install cscope first."
	exit 1
fi

if [ ! -e $HOME'/.vim/bundle/Vundle.vim' ]; then
	git clone https://github.com/gmarik/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim >/dev/null 2>&1
fi

echo "cp .vimrc to $HOME "
cp vimrc $HOME/.vimrc
