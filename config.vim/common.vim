set nocompatible
" allow backspacing over everything in insert mode
set backspace=indent,eol,start
set nobackup
set nowritebackup
set history=50		" keep 50 lines of command line history
set ruler
set showcmd		" display incomplete commands
set incsearch		" do incremental searching
set number
set numberwidth=3
set relativenumber

colorscheme dracula

set cursorline
set showmatch

if has('statusline')
    " Always show status line
    set laststatus=2
    " Broken down into easily includeable segments
    " Filename
    set statusline=%<%f\
    " Options
    set statusline+=%w%h%m%r
    " Current dir
    set statusline+=\ [%{getcwd()}]
    " Right aligned file nav info
    set statusline+=%=%-14.(%l,%c%V%)\ %p%%
endif

if has("wildmenu")
    " Show a list of possible completions
    set wildmenu
    " Tab autocomplete longest possible part of a string, then list
   " set wildmode=longest,list
    if has ("wildignore")
        set wildignore+=*.a,*.pyc,*.o,*.orig
        set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.jpeg,*.png
        set wildignore+=.DS_Store,.git,.hg,.svn
        set wildignore+=*~,*.sw?,*.tmp
    endif
endif

filetype on
syntax enable

" moving
noremap ; l
noremap l k
noremap k j
noremap j h

" Highlight trailing whitespace and lines longer than 80 columns.
highlight LongLine ctermbg=DarkYellow guibg=DarkYellow
highlight WhitespaceEOL ctermbg=DarkYellow guibg=DarkYellow

" Useful macros for cleaning up code to conform to LLVM coding guidelines

" Delete trailing whitespace and tabs at the end of each line
command! DeleteTrailingWs :%s/\s\+$//

" Convert all tab characters to two spaces
command! Untab :%s/\t/  /g


" filetypes

augroup filetype
  au! BufRead,BufNewFile *Makefile* set filetype=make
augroup END
augroup filetype
  au! BufRead,BufNewFile *mk set filetype=make
augroup END
