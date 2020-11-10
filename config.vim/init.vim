let $vimdir="~/repo_config/config.vim"
source $vimdir/plugin.vim
source $vimdir/autocomplete.vim
source $vimdir/editing.vim
source $vimdir/common.vim


nnoremap <leader><space> :nohlsearch<CR

if has("syntax")
    " Enable syntax highlighting
    syntax enable
    " Set 256 color terminal support
    set t_Co=256
    " Set dark background
    set background=dark
endif

if &term =~ '256color'
        " Disable Background Color Erase (BCE) so that color schemes
        " work properly when Vim is used inside tmux and GNU screen.
        set t_ut=
endif


set noerrorbells visualbell t_vb=
if has('autocmd')
      autocmd GUIEnter * set visualbell t_vb=
endif
cmap <S-Insert>  <C-R>+


