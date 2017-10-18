if exists('g:vim_root')
  set backup
  let &backupdir = expand('~/.vim-backup').'//'
  if !isdirectory(&backupdir)
    call mkdir(&backupdir, 'p')
  endif
  augroup MyAutoCmd
    autocmd BufWritePre * let &backupext = substitute(expand('%:p:h'), '/', '%', 'g')
  augroup END
  
  if exists('&swapfile')
    set swapfile
    let &directory = expand('~/.vim-swap').'//'
    if !isdirectory(&directory)
      call mkdir(&directory, 'p')
    endif
  endif
  
  if exists('&undofile')
    set undofile
    let &undodir = expand('~/.vim-undo').'//'
    if !isdirectory(&undodir)
      call mkdir(&undodir, 'p')
    endif
  endif
endif
