" This must be first, because it changes other options as side effect
set nocompatible
"call pathogen#runtime_append_all_bundles()
call pathogen#incubate()
call pathogen#helptags()
execute pathogen#infect()


filetype plugin indent on
filetype indent plugin on
syntax enable


"http://stackoverflow.com/questions/880668/how-to-avoid-indentation-error-after-changing-tab-stops-in-vim
set tabstop=4
set shiftwidth=4
set expandtab

""Easy window navigation, Just use CTRL + hjkl for navigation inplace of CTRL+ W
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

""http://vim.wikia.com/wiki/Cycle_through_buffers_including_hidden_buffers
nnoremap <Tab> :bnext<CR>
nnoremap <C-Tab> :bprevious<CR>
""http://vim.wikia.com/wiki/Map_Ctrl-S_to_save_current_or_new_files
" If the current buffer has never been saved, it will have no name,
" call the file browser to save it, otherwise just save it.
command -nargs=0 -bar Update if &modified 
                           \|    if empty(bufname('%'))
                           \|        browse confirm write
                           \|    else
                           \|        confirm write
                           \|    endif
                           \|endif
nnoremap <silent> <C-S> :<C-u>Update<CR>

inoremap <c-s> <Esc>:Update<CR>
