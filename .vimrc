
call plug#begin('~/.vim/plugged')

" ---- // NERDTree ---- "
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'Xuyuanp/nerdtree-git-plugin'

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
Plug 'rhysd/vim-color-spring-night'

" ---- // autocomplete ---- "
" - python
Plug 'lambdalisue/vim-pyenv', { 'depends': ['davidhalter/jedi-vim'], 'autoload': { 'filetypes': ['python', 'python3'], } }
Plug 'hdima/python-syntax'
Plug 'davidhalter/jedi-vim'
Plug 'andviro/flake8-vim'
Plug 'tell-k/vim-autopep8'
"Plug 'hynek/vim-python-pep8-indent'
"
" - django
Plug 'jmcomets/vim-pony'
Plug 'vim-scripts/django.vim'

" - ruby
Plug 'rsense/rsense'
Plug 'Shougo/neocomplcache.vim'
Plug 'Shougo/neocomplcache-rsense.vim'
" Plug 'scrooloose/syntastic'

" - rails
Plug 'tpope/vim-rails'

" - go
Plug 'fatih/vim-go'

" - javascript
Plug 'pangloss/vim-javascript'
Plug 'jelera/vim-javascript-syntax'
Plug 'moll/vim-node'
"Plug 'burnettk/vim-angular'

" - coffee
Plug 'kchmck/vim-coffee-script'

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

" - html

" ---- // Snippet ---- "
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
Plug 'honza/vim-snippets'
Plug 'cohama/lexima.vim'

" ---- //  grep ---- "
Plug 'Shougo/unite.vim'
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'thinca/vim-quickrun'
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
Plug 'rking/ag.vim'
Plug 'soramugi/auto-ctags.vim'

" ---- // DB ---- //
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
Plug 'kubocker/japan_postal_code.vim'
Plug 'kubocker/speed.vim', { 'do': 'pip install TinyDB' }

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
    "colorscheme seattle
    "colorscheme vim-material
    colorscheme plasticine
    "colorscheme spring-night

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
" set colorcolumn=80
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
runtime! userautoload/*/*.vim
"runtime! userautoload/*.vim

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
nnoremap <Tab>c :Colors<CR>

" vimshell.vim
nnoremap <silent>vs :VimShell<CR>
nnoremap <silent>vsc :VimShellCreate<CR>
nnoremap <silent>vp :VimeShellPop<CR>

" memolist.vim
nnoremap <silent>mn :MemoNew<CR>
nnoremap <silent>ml :MemoList<CR>
nnoremap <silent>mg :MemoGrep<CR>
nmap mf  :FufFile <C-r>=expand(g:memolist_path."/")<CR><CR>

" --------- indent ---------- "
augroup fileTypeIndent
    autocmd!
    autocmd BufNewFile,BufRead *.py setlocal tabstop=4 softtabstop=4 shiftwidth=4
    autocmd BufNewFile,BufRead *.rb setlocal tabstop=2 softtabstop=2 shiftwidth=2
augroup END

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

" ctags "
let g:auto_ctags = 1
let g:auto_ctags_directory_list = ['.git', '.svn']
let g:auto_ctags_tags_name = 'tags'
let g:auto_ctags_tags_args = '--tag-relative --recurse --sort=yes'
let g:auto_ctags_filetype_mode = 1

" proc "
let g:quickrun_config = get(g:, 'quickrun_config', {})
let g:quickrun_config._ = {
      \ 'runner'    : 'vimproc',
      \ 'runner/vimproc/updatetime' : 60,
      \ 'outputter' : 'error',
      \ 'outputter/error/success' : 'buffer',
      \ 'outputter/error/error'   : 'quickfix',
      \ 'outputter/buffer/split'  : ':rightbelow 8sp',
      \ 'outputter/buffer/close_on_empty' : 1,
      \ }

" jedi "
"autocmd FileType python setlocal omnifunc=jedi#completions
"let g:jedi#completions_enabled = 0
"let g:jedi#auto_vim_configuration = 0
"if !exists('g:neocomplete#force_omni_input_patterns')
"    let g:neocomplete#force_omni_input_patterns = {}
"endif

"g:neocomplete#force_omni_input_patterns.python = '\h\w*\|[^. \t]\.\w*'
"
" syntastic "
" let g:syntastic_mode_map = {
"     \ 'mode': 'active',
"     \ 'active_filetypes': ['ruby', 'python', 'javascript'],
"     \ 'passive_filetypes': ['html']
"     \ }
" let g:syntastic_python_checkers = ['pylint']
let g:syntastic_ruby_checkers = ['rubocop']
let g:syntastic_javascript_checkers = ['jshint']
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_enable_signs = 1
" let g:syntastic_error_symbol = '✗'
" let g:syntastic_warning_symbol = '⚠'


" rsense "
"" neocomplcacheの設定
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0

" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1

" Use smartcase.
let g:neocomplcache_enable_smart_case = 1

" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion = 1


" Rsense用の設定
if !exists('g:neocomplcache_omni_patterns')
    let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete

"rsenseのインストールフォルダがデフォルトと異なるので設定
let g:rsenseHome = expand("*Rsenseのインストールパスをここにペースト*")
let g:rsenseUseOmniFunc = 1


" kubocker  "
let g:speed_todo_path = 'Develop/kubocker/work/todo/'

" colorscheme
"let g:airline_theme='material'
let g:airline_theme='spring_night'

let g:netrw_nogx = 1
nmap gx <Plug>(openbrowser-open)
vmap gx <Plug>(openbrowser-open)

"Map your keys
"nmap <c-i> <Plug>(simple-todo-new)
"imap <c-i> <Plug>(simple-todo-new)
command! -nargs=* Go : call Go(<f-args>)
"
