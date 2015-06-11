vim_settings
============

###Setup
* install files<br> <code>$ git clone https://github.com/jschoeff81690/vim_settings</code><br>
<code>$ cd vim_settings</code><br>
<code>$ git submodule init</code><br>
<code>$ git submodule update</code><br>
* move corresponding vimrc to ~/.vimrc or /etc/vimrc
  + e.g., <code>$ cp OSX/vimrc ~/.vimrc</code>
* move plugins from vim_settings/vim to ~/vim
 + e.g., <code>$ cp -rf vim ~/.vim/</code>
 
###Adding Plugins
* git submodule add https://github.com/git_repository vim/bundle/git_repostoryname
* to pull a new plugin when updating vim_settings:
  + <code>$ git pull</code><br>
  + <code>$ git submodule init</code><br>
  + <code>$ git submodule update</code><br>

###Reference of plugins and commands
====================================
* <code> (normal mode)fr  maps to :%s/ | search and replace</code>
* emmet-vim.git: https://github.com/mattn/emmet-vim.git
  + REFERENCE: https://raw.githubusercontent.com/mattn/emmet-vim/master/TUTORIAL
* html5.vim.git: https://github.com/othree/html5.vim.git
* syntastic.git : https://github.com/scrooloose/syntastic.git 
* vim-easymotion.git: https://github.com/Lokaltog/vim-easymotion.git
  + <code>`<Leader><Leader>`w | Beginning of word forward.</code>
  + <code>`<Leader><Leader>`b | Beginning of word backward.</code>
  + <code>`<Leader><Leader>`j | Line downward. </code>
  + <code>`<Leader><Leader>`k | Line upward. </code>
  + <code> /word | Search for a word hit tab/S-tab to scroll. </code>
* vim-javascript.git: https://github.com/pangloss/vim-javascript.git
* vim-json.git: https://github.com/elzr/vim-json.git
* vim-markdown.git: https://github.com/tpope/vim-markdown.git
* vim-surround.git: https://github.com/tpope/vim-surround.git
* nerdcommenter.git : https://github.com/scrooloose/nerdcommenter.git 
  + <code>`<Leader>`ca | toggle between /* */ and // </code>
  + <code>`<leader>cA` | comment end of line(commentAppend) </code>
* Nerdtree.git: https://github.com/scrooloose/nerdtree.git 
  + <code> (normal mode) nt  | NERDTreeToggle</code>
* CtrlP: https://github.com/kien/ctrlp.vim
  +  in normal mode ff maps to ctrlp 
* Multiple Selects like Sublime : https://github.com/terryma/vim-multiple-cursors 
  + <code>Ctrl+n</code> | Select multiple
  + <code>Ctrl+p</code> | DeSelect last cursor
* SuperTab for local word autocomplete : git clone https://github.com/ervandew/supertab
  + __word_<code>tab</code> | finishes the word
  + e.g., var_<code>tab</code> | Drop down with var_dump


For Minix 3
==========================
Before git remote commands(pull,push, etc) need to <code>export GIT_SSL_NO_VERIFY=true</code> to ignore the ssl certs.
Then is the same.
