if &compatible
  set nocompatible
endif

let g:nvim_config = expand('<sfile>:p:h')
runtime! rc/*.vim
runtime! rc/dein/init.vim
