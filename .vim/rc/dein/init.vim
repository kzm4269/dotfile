let g:dein_root = g:vim_root . '/dein'
let s:dein_repo = g:dein_root . '/repos/github.com/Shougo/dein.vim'
let s:dein_rc = g:vim_root . '/rc/dein'

if has('vim_starting')
  execute 'set runtimepath+=' . s:dein_repo
endif

if dein#load_state(g:dein_root)
  call dein#begin(g:dein_root)
  call dein#add(s:dein_repo)
  call dein#load_toml(s:dein_rc . '/plugins.toml')
  call dein#end()
  call dein#save_state()
endif

if dein#check_install(['vimproc.vim'])
  call dein#install(['vimproc.vim'])
endif

if dein#check_install()
  call dein#install()
endif

filetype plugin indent on
syntax enable
