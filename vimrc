syntax enable
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()
let mapleader=','
Bundle 'gmarik/vundle'

Bundle 'bling/vim-airline'
Bundle 'tpope/vim-surround'
Bundle 'Townk/vim-autoclose'
Bundle 'fatih/vim-go'
Bundle 'rizzatti/dash.vim'

Bundle 'tomasr/molokai'
Bundle 'altercation/vim-colors-solarized'
Bundle 'crucerucalin/peaksea.vim'
Bundle 'chriskempson/vim-tomorrow-theme'

Bundle 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'yonchu/accelerated-smooth-scroll'
Bundle 'vim-scripts/matchit.zip'
Bundle 'othree/xml.vim'
Bundle 'mattn/webapi-vim'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'airblade/vim-gitgutter'
Bundle 'scrooloose/nerdcommenter'
Bundle 'tpope/vim-fugitive'
Bundle 'kien/ctrlp.vim'
Bundle 'easymotion/vim-easymotion'
Bundle 'Shougo/neocomplete'
Bundle 'majutsushi/tagbar'
Bundle 'mileszs/ack.vim'

" let g:solarized_termcolors=256
" let g:molokai_original = 1
" set t_Co=256
filetype indent plugin on 
set ai "自动对齐
set mouse=a
set scrolloff=5
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

" colorscheme tomorrow-night
colorscheme peaksea

if has("gui_running") 
	set guifont=Monaco:h14
    set guioptions-=m " 隐藏菜单栏 
	set guioptions-=T " 隐藏工具栏 
    set guioptions-=L " 隐藏左侧滚动条 
	set guioptions-=r " 隐藏右侧滚动条 
	set guioptions-=b " 隐藏底部滚动条 
	set showtabline=0 " 隐藏Tab栏 
endif  

let g:go_fmt_command = "goimports"
let g:go_play_open_browser = 0
let g:go_bin_path = $GOPATH
let g:go_snippet_engine = "neosnippet"
let g:syntastic_python_checkers=['pylint']
let g:nerdtree_tabs_open_on_console_startup=0       "设置打开vim的时候默认打开目录树加强版插件
let NERDTreeIgnore=['\.pyc$', '\~$']
let g:NERDSpaceDelims=1 "注释的时候自动加个空格
let g:indent_guides_auto_colors = 0
let g:tagbar_autofocus = 1

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4

map <C-e> :NERDTreeToggle<CR>
map <leader>w :w<CR>
map <leader>wq :wq<CR>
" map <leader>t :TagbarToggle<CR>
map <leader>t :TagbarOpenAutoClose<CR>





"Note: This option must be set in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
	" return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
	" For no inserting <CR> key.
	return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
" let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
