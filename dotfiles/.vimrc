
call plug#begin('~/.vim/plugged')

" ---- // NERDTree ---- "
" ---- // ---- "
" Plug 'cocopon/vaffle.vim'
" Plug 'miyakogi/seiya.vim'

" ---- // colorscheme --- "
Plug 'tomasr/molokai'
Plug 'zaki/zazen'
Plug 'KeitaNakamura/neodark.vim'
Plug 'mbbill/vim-seattle'
Plug 'cocopon/iceberg.vim'
Plug 'nightsense/seabird'
Plug 'hzchirs/vim-material'
Plug 'prognostic/plasticine'
Plug 'vim-scripts/ibmedit.vim'
Plug 'jacoborus/tender.vim'
Plug 'rhysd/vim-color-spring-night'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'dracula/vim', { 'as': 'dracula' }

" airline "

" ---- // autocomplete ---- "

" - python
"
" - django

" - ruby

" - rails
" Plug 'tpope/vim-rails'

" - go
Plug 'fatih/vim-go'

" - php
" Plug 'stanangeloff/php.vim'
" Plug 'violetyk/neocomplete-php.vim'

" - html

call plug#end()

if isdirectory(expand("~/.vim/plugged"))

    " NERDTree "

    " ColorScheme "
    "colorscheme molokai
    "colorscheme iceberg
    "colorscheme nordisk
    "colorscheme zazen
    "colorscheme neodark
    "colorscheme seattle
    "colorscheme petrel
    "colorschem seagull
    "colorscheme vim-material
    "colorscheme plasticine
    "colorscheme spring-night
    "colorscheme tender
    "colorscheme darkblue
    colorscheme dracula

endif



" fzf
set rtp+=~/.fzf

" tmux
set t_ut=

" Command

" Set
syntax on
set number
set title
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab
set autoindent
set smartindent
set ignorecase
set nobackup
set clipboard=unnamed,autoselect
set shiftround
set incsearch
set guioptions-=e
set cursorline
"set nocursorline
set colorcolumn=80
" set background=light
set background=dark
highlight NonText ctermbg=none
autocmd FileType python setlocal completeopt-=preview
"set guicursor+=i:ver100-iCursor
"set guicursor=i:ver25-iCursor
"" markdownのハイライトを有効にする
set syntax=markdown
au BufRead,BufNewFile *.md set filetype=markdown
set backspace=indent,eol,start
" 分割した設定ファイルをすべて読み込む
set runtimepath+=~/.vim/
"runtime! userautoload/*/*.vim
"runtime! userautoload/*.vim

"autocmd
" set nocursorline
" autocmd InsertEnter,InsertLeave * set cursorline!

" ---------- Key Map --------- "

