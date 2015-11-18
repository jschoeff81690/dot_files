#!/bin/bash

# init the gits
echo "Initializing git submodules, this may take little while."
git submodule init
git submodule update

# Do we have zsh? if not, lets try and install
if [ ! -d /bin/zsh ] ; then
    sudo apt-get install zsh
    sudo yum install zsh
fi

echo "Setting zsh as default shell, requires pass."
if [ -d /bin/zsh ] ; then
    chsh -s /bin/zsh
fi
# User and repo constants 
user_vimrc=~/.vimrc
user_bashrc=~/.bashrc
user_zshrc=~/.zshrc
user_tmux=~/.tmux.conf

user_bin_dir=~/bin
user_vim_dir=~/.vim
user_tmux_dir=~/.tmux

repo_vimrc=vimrc
repo_zshrc=zshrc
repo_bashrc=bashrc
repo_tmux=tmux.conf

repo_vim_dir=vim
repo_bin_dir=bin

# Backup any existing files that will be overwritten
echo "Backing up current config files(vimrc, bashrc, zshrc, vim dir, ~/bin dir)"
if [ -a $user_vimrc ] ; then
    mv $user_vimrc ${user_vimrc}_bkup
fi

if [ -a $user_bashrc ] ; then
    mv $user_bashrc ${user_bashrc}_bkup
fi

if [ -a $user_zshrc ] ; then
    mv $user_zshrc ${user_zshrc}_bkup
fi

if [ -a $user_tmux ] ; then
    mv $user_tmux ${user_tmux}_bkup
fi

if [ -d $user_vim_dir ] ; then
    mv $user_vim_dir ${user_vim_dir}_bkup
fi

if [ -d $user_bin_dir ] ; then
    mv $user_bin_dir ${user_bin_dir}_bkup
fi

if [ -d $user_tmux_dir ] ; then
    mv $user_tmux_dir ${user_tmux_dir}_bkup
fi

# Transfer the goods
echo "Moving repo files to $USER home directory"
cp $repo_vimrc $user_vimrc
cp $repo_bashrc $user_bashrc
cp $repo_zshrc $user_zshrc
cp $repo_tmux $user_tmux

cp -r $repo_vim_dir $user_vim_dir
cp -r $repo_bin_dir $user_bin_dir

# Install TPM
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Install tmux plugins
~/.tmux/plugins/tpm/scripts/install_plugins.sh
