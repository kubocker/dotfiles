
call plug#begin('~/.vim/plugged')

" ---- // NERDTree ---- "
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'Xuyuanp/nerdtree-git-plugin'

" ---- // colorscheme --- "
Plug 'tomasr/molokai'
Plug 'zaki/zazen'
Plug 'encody/nvim'
Plug 'albertorestifo/github.vim'
Plug 'kamwitsta/nordisk'
Plug 'KeitaNakamura/neodark.vim'
Plug 'mbbill/vim-seattle'
Plug 'cocopon/iceberg.vim'
Plug 'davidklsn/vim-sialoquent'
Plug 'nightsense/seabird'
Plug 'zcodes/vim-colors-basic'

" ---- // autocomplete ---- "
" - python
Plug 'lambdalisue/vim-pyenv', { 'depends': ['davidhalter/jedi-vim'], 'autoload': { 'filetypes': ['python', 'python3'], } }
Plug 'hdima/python-syntax'
Plug 'davidhalter/jedi-vim'
Plug 'andviro/flake8-vim'
Plug 'hynek/vim-python-pep8-indent'

" - django
Plug 'jmcomets/vim-pony'
Plug 'vim-scripts/django.vim'

" - ruby

" - go
Plug 'fatih/vim-go'

" - javascript
Plug 'pangloss/vim-javascript'
Plug 'jelera/vim-javascript-syntax'
Plug 'moll/vim-node'
"Plug 'burnettk/vim-angular'

" - php
Plug 'stanangeloff/php.vim'
Plug 'violetyk/neocomplete-php.vim'

" - swift
Plug 'keith/swift.vim'

" - c sharp
"Plug 'OmniSharp/omnisharp-vim'
"Plug 'OmniSharp/omnisharp-vim', { 'autoload': { 'filetypes':  ['cs', 'csi', 'csx'] }, 'build': { 'mac': 'xbuild/server/OmniSharp.sln', 'unix': 'xbuild/server/OmniSharp.sln'} }
"Plug 'OrangeT/vim-csharp'
"
"
Plug 'tpope/vim-dispatch'
Plug 'tikhomirov/vim-glsl'
"Plug 'Valloric/YouCompleteMe'
Plug 'ternjs/tern_for_vim'


" ---- // Snippet ---- "
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
Plug 'honza/vim-snippets'
Plug 'cohama/lexima.vim'

" ---- //  grep ---- "
Plug 'Shougo/unite.vim'
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
"Plug 'Shougo/vimproc.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" ---- // git ---- "
Plug 'tpope/vim-fugitive'
Plug 'gregsexton/gitv'
Plug 'kmnk/vim-unite-giti'
Plug 'cohama/agit.vim'
Plug 'jreybert/vimagit'
Plug 'AndrewRadev/gapply.vim'
Plug 'rhysd/committia.vim'

" ---- // vim ---- //
Plug 'christoomey/vim-tmux-navigator'
Plug 'Townk/vim-autoclose'
Plug 'thinca/vim-quickrun'
Plug 'dhruvasagar/vim-table-mode'
Plug 'mattn/webapi-vim'
Plug 'Shougo/vimshell.vim'
"DB
Plug 'mattn/vdbi-vim'
Plug 'vim-scripts/dbext.vim'
" ---- // others ---- //
Plug 'mizukmb/otenki.vim'
Plug 'osyo-manga/vim-sugarpot'
Plug 'mattn/calendar-vim'
"Plug 'itchyny/calendar.vim'
"Plug 'vitalk/vim-simple-todo'
Plug 'glidenote/memolist.vim'
Plug 'vim-scripts/L9'
Plug 'vim-scripts/FuzzyFinder'
Plug 'vim-scripts/vim-auto-save'
Plug 'dhruvasagar/vim-table-mode'
Plug 'tyru/open-browser.vim'
"Plug 'plasticboy/vim-markdown'
"Plug 'kannokanno/previm'
"
"
" ---- // kubocker ---- "
Plug 'kubocker/cal.vim'

call plug#end()

if isdirectory(expand("~/.vim/plugged"))

    " NERDTree "
    let file_name = expand('%')
    let git = isdirectory('.git')
    if has('vim_starting') && file_name == ''
    "if has('vim_starting') && git
      autocmd VimEnter * NERDTree ./
    endif

    " ColorScheme "
    "colorscheme molokai
    "colorscheme iceberg
    "colorscheme nordisk
    "colorscheme zazen
    "colorscheme neodark
    "colorscheme sialoquent
    colorscheme seattle
    "colorscheme petrel
    "colorschem seagull
    "colorschem basic-dark
    "colorschem basic-light

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
set colorcolumn=80
set background=light
"set background=dark
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
runtime! userautoload/*/*.vim

"autocmd
" set nocursorline
" autocmd InsertEnter,InsertLeave * set cursorline!

" ---------- Key Map --------- "
" nerdtree
nnoremap <Space>n :NERDTree<CR>

" calender.vim
nnoremap <Space>c :Calendar<CR>

" fzf.vim
nnoremap <Tab>h :History:<CR>
nnoremap <Tab>f :Files<CR>
nnoremap <Tab>c :Commits<CR>
nnoremap <Tab>g :GFiles?<CR>

" vimshell.vim
nnoremap <silent>vs :VimShell<CR>
nnoremap <silent>vsc :VimShellCreate<CR>
nnoremap <silent>vp :VimeShellPop<CR>

" memolist.vim
nnoremap <silent>mn :MemoNew<CR>
nnoremap <silent>ml :MemoList<CR>
nnoremap <silent>mg :MemoGrep<CR>
nmap mf  :FufFile <C-r>=expand(g:memolist_path."/")<CR><CR>

" ---------- global setting ---------- "
let g:vimshell_interactive_update_time = 10
let g:vimshell_prompt = $USERNAME."% "
let g:calendar_google_calendar = 1
let g:calendar_google_task = 1
"Disable default key bindings
"let g:simple_todo_map_keys = 0
"let g:memolist_path = '~/memo'
let g:memolist_path = "~/Develop/kubocker/memo"
let g:memolist_unite        = 1
let g:memolist_unite_source = 'file_rec'
let g:memolist_unite_option = '-start-insert'

" mattn calendar "
let g:calendar_diary = '~/Develop/kubocker/work/diary'


let g:netrw_nogx = 1
nmap gx <Plug>(openbrowser-open)
vmap gx <Plug>(openbrowser-open)

"Map your keys
"nmap <c-i> <Plug>(simple-todo-new)
"imap <c-i> <Plug>(simple-todo-new)
"
"let res = webapi#http#get('http://127.0.0.1:8000/youtube/artist/')
"let content = webapi#json#decode(res.content)
"echo content
