set tabstop=2
set shiftwidth=2
set expandtab
colorscheme OceanicNext
set textwidth=80
set number
set relativenumber
set ruler " show the cursor position all the time
set autoindent
set expandtab
if has('statusline')
    " Always show status line
    set laststatus=2
    "         " Broken down into easily includeable segments
    "             " Filename
    set statusline=%<%f\
    "                     " Options
    set statusline+=%w%h%m%r
    "                             " Current dir
    set statusline+=\ [%{getcwd()}]
    "                                     " Right aligned file nav
    "                                     info
    set statusline+=%=%-14.(%l,%c%V%)\ %p%%
endif
