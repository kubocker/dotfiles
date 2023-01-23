
call plug#begin('~/.vim/plugged')


Plug 'Shougo/vimfiler.vim'
Plug 'Shougo/unite.vim'
Plug 'Shougo/vimproc.vim'
"Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
"Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf'
Plug 'tpope/vim-commentary'
Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
"Plug 'w0rp/ale'
Plug 'sheerun/vim-polyglot'
Plug 'majutsushi/tagbar'
Plug 'junegunn/goyo.vim'
Plug 'itchyny/lightline.vim'
"Plug 'SirVer/ultisnips'
"Plug 'neoclide/coc.nvim'

" Javascript "
"Plug 'pangloss/vim-javascript'
"Plug 'leafgarland/typescript-vim'
"Plug 'peitalin/vim-jsx-typescript'
"Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
"Plug 'jparise/vim-graphql'




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


call plug#end()

if isdirectory(expand("~/.vim/plugged"))

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



" ---------- Shogo ---------- "
let g:vimfiler_as_default_explorer = 1
" Open filer
noremap <silent> :tree :VimFiler -split -simple -winwidth=45 -no-quit
noremap <C-X><C-T> :VimFiler -split -simple -winwidth=45 -no-quit<ENTER>
" Don't let <CR> enter the directory but let it open the directory
autocmd FileType vimfiler nmap <buffer> <CR> <Plug>(vimfiler_expand_or_edit)
" Automatically open vimfiler on start
autocmd VimEnter * VimFilerExplorer
" If no files are specified, open vimfiler
autocmd VimEnter * if !argc() | VimFiler | endif


" --------- Javascript ---------- "
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear



