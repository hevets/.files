# hevets dot files
#!/usr/bin/python
import os

# clean screen prep install
os.system('clear')

# installs zsh to system
os.system("curl -L http://install.ohmyz.sh | sh")

# remove .vim settings
os.system("rm -rf ~/.vim")

# remove all personal config files
os.system("rm ~/.ackrc")
os.system("rm ~/.gitconfig")
os.system("rm ~/.jshintrc")
os.system("rm ~/.vimrc")
os.system("rm ~/.bashrc")
os.system("rm ~/.zshrc")

# create links to config files
os.system("ln -s ~/.files/.ackrc ~/.ackrc")
os.system("ln -s ~/.files/.gitconfig ~/.gitconfig")
os.system("ln -s ~/.files/.jshintrc ~/.jshintrc")
os.system("ln -s ~/.files/.vimrc ~/.vimrc")
os.system("ln -s ~/.files/.bashrc ~/.bashrc")
os.system("ln -s ~/.files/.zshrc ~/.zshrc")

# clone in vundle & zsh
os.system("git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle")
os.system('vim +BundleInstall +qall')
