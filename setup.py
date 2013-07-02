#!/usr/bin/python

import os

os.system('clear')

# remove .vim settings
os.system("rm -r ~/.vim")

# remove all personal config files
os.system("rm ~/.ackrc")
os.system("rm ~/.gitconfig")
os.system("rm ~/.jshintrc")
os.system("rm ~/.vimrc")
os.system("rm ~/.zshrc")

# create links to config files
os.system("ln -s ~/.files/.ackrc ~/.ackrc")
os.system("ln -s ~/.files/.gitconfig ~/.gitconfig")
os.system("ln -s ~/.files/.jshintrc ~/.jshintrc")
os.system("ln -s ~/.files/.vimrc ~/.vimrc")
os.system("ln -s ~/.files/.zshrc ~/.zshrc")

# clone in vundle & zsh
os.system("git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle")
os.system('git submodule update --init')
os.system('vim +BundleInstall +qall')
