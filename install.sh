#!/usr/bin/env bash


bak_dir=~/.vimbak-`date +%Y%m%d%H%M%S`/
echo "backup dir: "${bak_dir}


mkdir ${bak_dir}

mv ~/.vimrc	${bak_dir}
mv ~/.vim ${bak_dir}

git clone https://github.com/fengjx/my-vim.git ~/.vim

# cd ~/.vim
# git config user.name "FengJianxin"
# git config user.name "fengjianxin2012@gmail.com"

# install minpac
git clone https://github.com/k-takata/minpac.git \
    ~/.vim/pack/minpac/opt/minpac

# 安装插件
vim +PackUpdate
