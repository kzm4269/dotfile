let s:dein_cache = expand('~/.cache/dein')
let s:dein_rc = expand('<sfile>:p:h')

" Install dein.vim
let s:dein_repo = s:dein_cache .'/repos/github.com/Shougo/dein.vim'
if &runtimepath !~ '/dein.vim'
  if !isdirectory(s:dein_repo)
    execute '!curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh | sh -s -- ' s:dein_cache
  endif
  execute 'set runtimepath+=' . fnamemodify(s:dein_repo, ':p')
endif

" Load .toml files
if dein#load_state(s:dein_cache)
  call dein#begin(s:dein_cache)
  call dein#add(s:dein_repo)
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
