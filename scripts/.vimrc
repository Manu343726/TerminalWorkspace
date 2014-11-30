""""""""""""""""""""""""""""""""""""""""""""""""
" Visual config
""""""""""""""""""""""""""""""""""""""""""""""""

syntax on           "enable syntax highlighting
colorscheme molokai
let g:airline_theme='dark'

set nowrap
set number

"Tab configuration:
"""""""""""""""""""

set tabstop=4
set shiftwidth=4
set softtabstop=4

set smarttab
set expandtab

""""""""""""""""""""""""""""""""""""""""""""""""
" Backup configuration (Disable all, use git)
""""""""""""""""""""""""""""""""""""""""""""""""

set nobackup
set noswapfile

""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle config
""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
Bundle 'https://github.com/Valloric/YouCompleteMe.git'
Bundle 'bling/vim-airline'
Bundle 'edkolev/promptline.vim'
Bundle 'edkolev/tmuxline.vim'
Bundle 'oblitum/rainbow'

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.

""""""""""""""""""""""""""""""""""""""""""""""""""
" YouCompleteMe config
""""""""""""""""""""""""""""""""""""""""""""""""""

let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'

""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-airline config
""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""
" airline
"""""""""""""""""""""""""""""""
"let g:airline_right_sep='|'
"let g:airline_left_sep='|'
let g:airline_branch_empty_message=''
let g:airline_detect_modified=1
let g:airline_detect_paste=1
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1
set laststatus=2

set lazyredraw
set t_Co=256


"""""""""""""""""""""""""""""""""""""""""""""""""""
" tmuxline config
""""""""""""""""""""""""""""""""""""""""""""""""""" 
        
let g:tmuxline_preset = 'tmux'

"""""""""""""""""""""""""""""""""""""""""""""""""""
" promptline config
"""""""""""""""""""""""""""""""""""""""""""""""""""
let g:promptline_preset = {
        \'b'    : [ promptline#slices#cwd({ 'dir_limit': 1 }) ],
        \'z'    : [ '$(tty)' ],
        \'x'    : [ promptline#slices#git_status() , promptline#slices#vcs_branch() ]}

"""""""""""""""""""""""""""""""""""""""""""""""""""
" Rainbow config
"""""""""""""""""""""""""""""""""""""""""""""""""""
let g:rainbow_active = 1
