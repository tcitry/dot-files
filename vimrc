set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'bling/vim-airline'
Plugin 'tpope/vim-surround'
Plugin 'Townk/vim-autoclose'
" Plugin 'Raimondi/delimitMate'
Plugin 'fatih/vim-go'

Plugin 'crucerucalin/peaksea.vim'
Plugin 'chriskempson/vim-tomorrow-theme'

Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'yonchu/accelerated-smooth-scroll'
Plugin 'vim-scripts/matchit.zip'
Plugin 'othree/xml.vim'
Plugin 'mattn/webapi-vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'easymotion/vim-easymotion'
" Plugin 'Shougo/neocomplete'
Plugin 'Valloric/YouCompleteMe'
Plugin 'majutsushi/tagbar'
Plugin 'mileszs/ack.vim'
" Plugin 'davidhalter/jedi-vim'

call vundle#end()
filetype plugin indent on

let mapleader=','
syntax enable
set t_Co=256
set ai "自动对齐
" set mouse=a
set scrolloff=5
" set foldmethod=indent
set laststatus=2 "始终显示状态栏
set tabstop=4 "一个制表符的长度
set shiftwidth=4 "一个缩进的长度
set smarttab "智能制表符
set autoindent "自动缩进
set number "显示行号
set ruler "显示位置指示器
set backupdir=/tmp "设置备份文件目录
set directory=/tmp "设置临时文件目录
set hls "检索时高亮显示匹配项
set helplang=cn "帮助系统设置为中文
" set cursorline "高亮行 大文件不要用，卡死
set tags=tags;/
set background=dark
set completeopt-=preview
set ic

" colorscheme tomorrow-night
" colorscheme peaksea

if has("gui_running") 
	set guifont=Monaco:h14
    set guioptions-=m " 隐藏菜单栏 
	set guioptions-=T " 隐藏工具栏 
    set guioptions-=L " 隐藏左侧滚动条 
	set guioptions-=r " 隐藏右侧滚动条 
	set guioptions-=b " 隐藏底部滚动条 
	set showtabline=0 " 隐藏Tab栏 
endif  

" let g:go_fmt_command = "goimports"
" let g:go_play_open_browser = 0
" let g:go_bin_path = $GOPATH
" let g:go_snippet_engine = "neosnippet"
let g:syntastic_python_checkers=['pylint']
let g:nerdtree_tabs_open_on_console_startup=0       "设置打开vim的时候默认打开目录树加强版插件
let NERDTreeQuitOnOpen=1
let NERDTreeIgnore=['\.pyc$', '\~$', '__pycache__']
let g:NERDSpaceDelims=1 "注释的时候自动加个空格
let g:indent_guides_auto_colors = 0
let g:tagbar_autofocus = 1

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4

noremap <silent> <Leader>f :NERDTreeFind<cr>
map <C-e> :NERDTreeToggle<CR>
map <leader>w :w<CR>
map <leader>wq :wq<CR>
map <leader>q :q<CR>
" map <leader>t :TagbarToggle<CR>
map <leader>t :TagbarOpenAutoClose<CR>
