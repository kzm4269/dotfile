" dein.vim - Basic installation
let $CACHE = expand('~/.cache')
if !($CACHE->isdirectory())
  call mkdir($CACHE, 'p')
endif
if &runtimepath !~# '/dein.vim'
  let s:dir = 'dein.vim'->fnamemodify(':p')
  if !(s:dir->isdirectory())
    let s:dir = $CACHE .. '/dein/repos/github.com/Shougo/dein.vim'
    if !(s:dir->isdirectory())
      execute '!git clone https://github.com/Shougo/dein.vim' s:dir
    endif
  endif
  execute 'set runtimepath^=' .. s:dir->fnamemodify(':p')->substitute('[/\\]$', '', '')
endif

let s:dein_base = expand('~/.cache/dein')
let s:dein_src = expand('~/.cache/dein/repos/github.com/Shougo/dein.vim')
let s:dein_rc = expand('<sfile>:p:h')

" Load .toml files
if dein#load_state(s:dein_base)
  call dein#begin(s:dein_base)
  call dein#add(s:dein_src)
  call dein#load_toml(s:dein_rc . '/plugins.toml')
  call dein#end()
  call dein#save_state()
endif

" Install pulgins
if dein#check_install()
  call dein#install()
endif

filetype plugin indent on
syntax enable
