" Dark powered mode of SpaceVim, generated by SpaceVim automatically.
let g:spacevim_enable_debug = 1
let g:spacevim_realtime_leader_guide = 1
call SpaceVim#layers#load('incsearch')
call SpaceVim#layers#load('lang#c')
call SpaceVim#layers#load('lang#clojure')
call SpaceVim#layers#load('lang#elixir')
call SpaceVim#layers#load('lang#go')
call SpaceVim#layers#load('lang#haskell')
call SpaceVim#layers#load('lang#java')
call SpaceVim#layers#load('lang#javascript')
call SpaceVim#layers#load('lang#lua')
call SpaceVim#layers#load('lang#nim')
call SpaceVim#layers#load('lang#perl')
call SpaceVim#layers#load('lang#php')
call SpaceVim#layers#load('lang#python')
call SpaceVim#layers#load('lang#rust')
call SpaceVim#layers#load('lang#swig')
call SpaceVim#layers#load('lang#scala')
call SpaceVim#layers#load('lang#solidity')
call SpaceVim#layers#load('lang#tmux')
call SpaceVim#layers#load('lang#typescript')
call SpaceVim#layers#load('lang#vim')
call SpaceVim#layers#load('lang#xml')
call SpaceVim#layers#load('shell')
call SpaceVim#layers#load('tools#screensaver')
let g:spacevim_enable_vimfiler_welcome = 1
let g:spacevim_enable_debug = 1
let g:deoplete#auto_complete_delay = 150
let g:spacevim_enable_tabline_filetype_icon = 1
let g:spacevim_enable_statusline_display_mode = 0
let g:spacevim_enable_os_fileformat_icon = 1
let g:spacevim_buffer_index_type = 1
let g:neomake_vim_enabled_makers = []
if executable('vimlint')
    call add(g:neomake_vim_enabled_makers, 'vimlint')
endif
if executable('vint')
    call add(g:neomake_vim_enabled_makers, 'vint')
endif
if has('python3')
    let g:ctrlp_map = ''
    nnoremap <silent> <C-p> :Denite file_rec<CR>
endif
let g:clang2_placeholder_next = ''
let g:clang2_placeholder_prev = ''

" colorscheme
" ----------------------------------
"  URL: https://github.com/rafi/awesome-vim-colorschemes
" ----------------------------------
" let g:spacevim_colorscheme = ''

" plugin install manager
" ----------------------------------
" vim-plug, dein, neobundle
" ----------------------------------
let g:spacevim_plugin_manager = 'dein'

" file manager
" ----------------------------------
" vimfiler, nerdtree
" ----------------------------------
let g:spacevim_filemanager = 'vimfiler' "nerdtree
let g:spacevim_statusline_separator = 'arrow'

" plugins
" ----------------------------------
"
" ----------------------------------
let g:spacevim_custom_plugins = [
    \ ['simeji/winresizer'],
    \ ['derekwyatt/vim-scala'],
    \ ['glidenote/memolist.vim'],
    \ ['liuchengxu/space-vim-dark'],
    \ ['zah/nim.vim']
    \ ]

" settings
" ----------------------------------
" 1. windos size change manager
" 2. memolist
" 3. vimfiler
" ----------------------------------

" 1.
let g:winresizer_enable = 1
let g:winresizer_gui_enable = 1
let g:winresizer_start_key = '<C-W>'

" 2.
let g:memolist_path = "~/Develop/kubocker/__memo__"
let g:memolist_template_dir_path = "~/Develop/kubocker/dotfiles/templates"
nnoremap <Leader>mn :MemoNew<CR>
nnoremap <Leader>ml :MemoList<CR>
nnoremap <Leader>mg :MemoGrep<CR>

" 3.
noremap <silent> :tree :VimFiler -split -simple -winwidth=30 -no-quit

" settings
" ----------------------------------
" vims
" ----------------------------------
set clipboard=unnamed,autoselect
