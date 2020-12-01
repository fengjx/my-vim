" https://vimjc.com/vimrc-config.html

source ~/.vim/vimrcs/basic.vim 
source ~/.vim/vimrcs/plugins.vim 
source ~/.vim/vimrcs/filetypes.vim

if filereadable("./.vimrc.vim")
  source ./.vimrc.vim
endif


