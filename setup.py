#!/usr/bin/python
import os

os.system('clear')

# remove .vim settings
os.system("rm -rf ~/.vim")

# remove all personal config files
os.system("rm ~/.ackrc")
os.system("rm ~/.gitconfig")
os.system("rm ~/.jshintrc")
os.system("rm ~/.vimrc")
os.system("rm ~/.zshrc")
os.system("rm ~/.tmux.conf")

# create links to config files
os.system("ln -s ~/.files/.ackrc ~/.ackrc")
os.system("ln -s ~/.files/.gitconfig ~/.gitconfig")
os.system("ln -s ~/.files/.jshintrc ~/.jshintrc")
os.system("ln -s ~/.files/.vimrc ~/.vimrc")
os.system("ln -s ~/.files/.zshrc ~/.zshrc")
os.system("ln -s ~/.files/.tmux.conf ~/.tmux.conf")

# clone in vundle & zsh
os.system("git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle")
os.system('git submodule update --init')
os.system('vim +BundleInstall +qall')


# I like to use Command + Shift + N (new session)
# and Command + Shift + T (resume target session)
print "install tmux with homebrew"
print "tmux bindings"
print "Add to iterm2 key bindings"
print "tmux new -s hevets"
print "tmux a -t hevets"
