set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'bling/vim-airline'
Bundle 'tpope/vim-surround'
Bundle 'Townk/vim-autoclose'
Bundle 'fatih/vim-go'
Bundle 'rizzatti/dash.vim'
Bundle 'altercation/vim-colors-solarized'
Bundle 'vim-scripts/Pydiction'
Bundle 'tomasr/molokai'
Bundle 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'yonchu/accelerated-smooth-scroll'
"Bundle 'scrooloose/syntastic'
Bundle 'vim-scripts/matchit.zip'
Bundle 'othree/xml.vim'
Bundle 'python.vim'
Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'
Bundle 'nathanaelkane/vim-indent-guides'
"Bundle 'davidhalter/jedi-vim'

filetype indent plugin on 
set ai "自动对齐
set mouse=a
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
set cursorline "高亮行
if has("gui_running") 
	set guifont=Monaco:h14
    set guioptions-=m " 隐藏菜单栏 
	set guioptions-=T " 隐藏工具栏 
    set guioptions-=L " 隐藏左侧滚动条 
	set guioptions-=r " 隐藏右侧滚动条 
	set guioptions-=b " 隐藏底部滚动条 
	set showtabline=0 " 隐藏Tab栏 
	colorscheme solarized
	set background=dark
else
	colo solarized
	colorscheme molokai
endif  
syntax enable

let Tlist_Auto_Open=1
"let g:pydiction_location = '~/.vim/bundle/Pydiction/complete-dict'
let g:solarized_termcolors=256
set t_Co=256
let g:molokai_original = 1	
let g:go_fmt_command = "goimports"
let g:go_play_open_browser = 0
let g:go_bin_path = $GOPATH
let g:go_snippet_engine = "neosnippet"
let g:syntastic_check_on_open=1
let g:syntastic_python_checkers=['pylint']
"autocmd vimenter * NERDTree	打开vim时自动打开目录树
let g:nerdtree_tabs_open_on_console_startup=1       "设置打开vim的时候默认打开目录树加强版插件
let NERDTreeIgnore=['\.pyc$', '\~$']
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
map <C-n> :NERDTreeToggle<CR>

let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
