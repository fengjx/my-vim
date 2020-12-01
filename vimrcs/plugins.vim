
" vim 插件
if exists('*minpac#init')

  " Minpac is loaded.
  call minpac#init()
  call minpac#add('k-takata/minpac', {'type': 'opt'})
  call minpac#add('yianwillis/vimcdoc')

  " Other plugins
  call minpac#add('junegunn/fzf', { 'do': { -> fzf#install() } })
  call minpac#add('junegunn/fzf.vim')
  call minpac#add('yegappan/mru')
  call minpac#add('kien/ctrlp.vim')
  call minpac#add('tpope/vim-surround')
  call minpac#add('tpope/vim-commentary')
  call minpac#add('tpope/vim-eunuch')
  call minpac#add('Valloric/YouCompleteMe', {'do': '!git submodule update --init --recursive --depth=1 && python3 install.py --clang-completer --go-completer --ts-completer'})

  " 可以快速对齐的插件
  call minpac#add('junegunn/vim-easy-align')
  call minpac#add('godlygeek/tabular')

  " 用来提供一个导航目录的侧边栏
  call minpac#add('scrooloose/nerdtree')
  call minpac#add('mbbill/undotree')

  " 可以使 nerdtree 的 tab 更加友好些
  call minpac#add('jistr/vim-nerdtree-tabs')

  " 可以在导航目录中看到 git 版本信息
  call minpac#add('Xuyuanp/nerdtree-git-plugin')
  call minpac#add('tpope/vim-fugitive')

  " 查看当前代码文件中的变量和函数列表的插件，
  " 可以切换和跳转到代码中对应的变量和函数的位置
  " 大纲式导航, Go 需要 https://github.com/jstemmer/gotags 支持
  call minpac#add('majutsushi/tagbar')

  " 自动补全括号的插件，包括小括号，中括号，以及花括号
  call minpac#add('jiangmiao/auto-pairs')

  " Vim状态栏插件，包括显示行号，列号，文件类型，文件名，以及Git状态
  call minpac#add('vim-airline/vim-airline')

  " 可以在文档中显示 git 信息
  call minpac#add('airblade/vim-gitgutter')

  " 下面两个插件要配合使用，可以自动生成代码块
  call minpac#add('SirVer/ultisnips')
  call minpac#add('honza/vim-snippets')

  " 可以在 vim 中使用 tab 补全
  "call minpac#add('vim-scripts/SuperTab')

  " 可以在 vim 中自动完成
  "call minpac#add('Shougo/neocomplete.vim')

  " 配色方案
  " colorscheme one 
  call minpac#add('rakr/vim-one')
  call minpac#add('tomasr/molokai')
  call minpac#add('altercation/vim-colors-solarized')
  call minpac#add('morhetz/gruvbox')


  " go 主要插件
  call minpac#add('fatih/vim-go', { 'tag': '*' })
  " go 中的代码追踪，输入 gd 就可以自动跳转
  call minpac#add('dgryski/vim-godef')
  call minpac#add('nsf/gocode')

  " markdown 插件
  call minpac#add('iamcco/mathjax-support-for-mkdp')
  call minpac#add('iamcco/markdown-preview.vim')

  " python
  call minpac#add('python-mode/python-mode', {'do': '!git submodule update --init --recursive', 'for': 'python' })
  call minpac#add('davidhalter/jedi')

  " web
  call minpac#add('posva/vim-vue')
  call minpac#add('vim-syntastic/syntastic')
  call minpac#add('ap/vim-css-color')

  " lua & openresty
  " call minpac#add('xolox/vim-lua-ftplugin')
  " call minpac#add('xolox/vim-misc')
  call minpac#add('tbastos/vim-lua')
  call minpac#add('chr4/nginx.vim')

  call minpac#add('junegunn/fzf', { 'do': { -> fzf#install() } })
  call minpac#add('junegunn/fzf.vim')
  call minpac#add('easymotion/vim-easymotion')
endif

if has('eval')
  " Minpac commands
  command! PackUpdate packadd minpac | source $MYVIMRC | call minpac#update('', {'do': 'call minpac#status()'})
  command! PackClean  packadd minpac | source $MYVIMRC | call minpac#clean()
  command! PackStatus packadd minpac | source $MYVIMRC | call minpac#status()
endif

" 切换窗口的键映射
nnoremap <C-Tab>	<C-W>w
inoremap <C-Tab>	<C-O><C-W>w
nnoremap <S-Tab>	<C-W>W
inoremap <S-Tab>	<C-O><C-W>W

" 开关撤销树的键映射
nnoremap <F6>      :UndotreeToggle<CR>
inoremap <F6> <C-O>:UndotreeToggle<CR>

"==============================================================================
" 插件配置 
"==============================================================================


"==============================================================================
" python
"==============================================================================
if has("gui_gtk2") || has("gui_gtk3")
  " Linux GUI
elseif has("gui_macvim")
  " set pythonthreedll=${HOME}/.pyenv/versions/3.8.5/Python.framework/Versions/3.8/Python
endif

" let g:ycm_path_to_python_interpreter = '${HOME}/.pyenv/shims/python3'
" let g:ycm_python_binary_path = 'python3'
" let g:ycm_server_python_interpreter = 'python3'
let g:pymode_python = 'python3'
let g:pymode_rope = 0
"自动检测并启用virtualenv
let g:pymode_virtualenv = 1

"==============================================================================
" 主题配色 
"==============================================================================
set background=dark " 主题背景 dark-深色; light-浅色

" one
" 开启24bit的颜色，开启这个颜色会更漂亮一些
" set termguicolors
" 配色方案, 可以从上面插件安装中的选择一个使用 
"colorscheme one

" molokai
" colorscheme molokai
" let g:rehash256 = 1
" let g:molokai_original = 1

" colorscheme solarized
" let g:solarized_termcolors=256

if isdirectory($HOME . "/.vim/pack/minpac/start/gruvbox")
  colorscheme gruvbox
  let g:gruvbox_termcolors=256
endif

"==============================================================================
" vim-go 插件
"==============================================================================
let g:go_fmt_command = "goimports" " 格式化将默认的 gofmt 替换
let g:go_autodetect_gopath = 1
let g:go_list_type = "quickfix"

let g:go_version_warning = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_methods = 1
let g:go_highlight_generate_tags = 1

let g:godef_split=2


"==============================================================================
" NERDTree 插件
"==============================================================================
if isdirectory($HOME . "/.vim/pack/minpac/start/nerdtree")
  " 打开和关闭NERDTree快捷键
  map <F1> :NERDTreeToggle<CR>
  " 显示行号
  let NERDTreeShowLineNumbers=1
  " 打开文件时是否显示目录
  let NERDTreeAutoCenter=0
  " 是否显示隐藏文件
  let NERDTreeShowHidden=1
  " 设置宽度
  " let NERDTreeWinSize=25
  " 忽略一下文件的显示
  let NERDTreeIgnore=['\.pyc','\~$','\.swp', 'node_modules']
  " 打开 vim 文件及显示书签列表
  let NERDTreeShowBookmarks=2

  " 在终端启动 vim 时，共享NERDTree
  let g:nerdtree_tabs_open_on_console_startup=0
  "当NERDTree为剩下的唯一窗口时自动关闭
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
  autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
  autocmd StdinReadPre * let s:std_in=1
  autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
endif

"==============================================================================
"  majutsushi/tagbar 插件
"==============================================================================

" majutsushi/tagbar 插件打开关闭快捷键
nmap <F2> :TagbarToggle<CR>

let g:tagbar_type_go = {
      \ 'ctagstype' : 'go',
      \ 'kinds'     : [
      \ 'p:package',
      \ 'i:imports:1',
      \ 'c:constants',
      \ 'v:variables',
      \ 't:types',
      \ 'n:interfaces',
      \ 'w:fields',
      \ 'e:embedded',
      \ 'm:methods',
      \ 'r:constructor',
      \ 'f:functions'
      \ ],
      \ 'sro' : '.',
      \ 'kind2scope' : {
      \ 't' : 'ctype',
      \ 'n' : 'ntype'
      \ },
      \ 'scope2kind' : {
      \ 'ctype' : 't',
      \ 'ntype' : 'n'
      \ },
      \ 'ctagsbin'  : 'gotags',
      \ 'ctagsargs' : '-sort -silent'
      \ }


"==============================================================================
"  nerdtree-git-plugin 插件
"==============================================================================
let g:NERDTreeGitStatusIndicatorMapCustom = {
      \ "Modified"  : "✹",
      \ "Staged"    : "✚",
      \ "Untracked" : "✭",
      \ "Renamed"   : "➜",
      \ "Unmerged"  : "═",
      \ "Deleted"   : "✖",
      \ "Dirty"     : "✗",
      \ "Clean"     : "✔︎",
      \ 'Ignored'   : '☒',
      \ "Unknown"   : "?"
      \ }

let g:NERDTreeGitStatusShowIgnored = 1

"==============================================================================
"  Valloric/YouCompleteMe 插件
"==============================================================================
if has('autocmd')
  " make YCM compatible with UltiSnips (using supertab)
  let g:ycm_key_list_select_completion = ['<C-n>', '<space>']
  let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
  let g:SuperTabDefaultCompletionType = '<C-n>'

  let g:ycm_auto_hover = ''
  let g:ycm_filetype_whitelist = {
        \ 'c': 1,
        \ 'cpp': 1,
        \ 'java': 1,
        \ 'python': 1,
        \ 'vim': 1,
        \ 'sh': 1,
        \ 'zsh': 1,
        \ }
  let g:ycm_goto_buffer_command = 'split-or-existing-window'
  let g:ycm_key_invoke_completion = '<C-Z>'
  let g:ycm_use_clangd = 1
  nnoremap <Leader>fi :YcmCompleter FixIt<CR>
  nnoremap <Leader>gt :YcmCompleter GoTo<CR>
  nnoremap <Leader>gd :YcmCompleter GoToDefinition<CR>
  nnoremap <Leader>gh :YcmCompleter GoToDeclaration<CR>
  nnoremap <Leader>gr :YcmCompleter GoToReferences<CR>

endif

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"


"==============================================================================
"  其他插件配置
"==============================================================================

" markdwon 的快捷键
map <silent> <F3> <Plug>MarkdownPreview
map <silent> <F4> <Plug>StopMarkdownPreview


"==============================================================================
" GVim 的配置
"==============================================================================

"采用2个空格的缩进
au BufNewFile,BufRead *.html,*.js,*.vue set tabstop=2
au BufNewFile,BufRead *.html,*.js,*.vue set softtabstop=2
au BufNewFile,BufRead *.html,*.js,*.vue set shiftwidth=2
au BufNewFile,BufRead *.html,*.js,*.vue set expandtab
au BufNewFile,BufRead *.html,*.js,*.vue set autoindent
au BufNewFile,BufRead *.html,*.js,*.vue set fileformat=unix
"这个是解决偶尔高亮失效
autocmd FileType vue syntax sync fromstart
"启用eslint代码检查
let g:syntastic_javascript_checkers = ['eslint']

if has('autocmd')
  " 异步运行命令时打开 quickfix 窗口，高度为 10 行
  let g:asyncrun_open = 10
endif

