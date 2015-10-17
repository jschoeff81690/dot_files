#!/bin/bash

user_vimrc=/home/$USER/.vimrc
user_vimrc_bkup=/home/$USER/.vimrc_bkup

user_vim_dir=/home/$USER/.vim
user_vim_dir_bkup=/home/$USER/.vim

repo_vim=vim
repo_vim_dir=vim_bkup

if [ -a $user_vimrc ] ; then
    mv $user_vimrc $user_vimrc_bkup
fi


if [ -d $user_vim_dir ] ; then
    mv $user_vim_dir $user_vim_dir_bkup
fi

cp $repo_vim $user_vimrc

cp -r $repo_vim_dir $user_vim_dir
