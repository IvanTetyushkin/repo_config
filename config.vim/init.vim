let $vimdir="~/repo_config/config.vim"

source $vimdir/plugin.vim
source $vimdir/common.vim


nnoremap <leader><space> :nohlsearch<CR

set noerrorbells visualbell t_vb=
if has('autocmd')
      autocmd GUIEnter * set visualbell t_vb=
endif
cmap <S-Insert>  <C-R>+


