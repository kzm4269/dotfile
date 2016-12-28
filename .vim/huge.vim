" init
let s:use_plugin = 1
augroup MyAutoCmd
	autocmd!
augroup END
filetype off

" NeoBundle
let g:bundle_root = g:vim_root . '/bundle'
let s:neobundle_root = g:bundle_root . '/neobundle.vim'
let s:neobundle_enable =  s:use_plugin && isdirectory(s:neobundle_root) && v:version >= 702

if s:neobundle_enable
	if has('vim_starting')
		execute 'set runtimepath+=' . s:neobundle_root
	endif
	
	call neobundle#begin(g:bundle_root)
	
	NeoBundleFetch 'Shougo/neobundle.vim'
	NeoBundle 'Shougo/vimproc', {
				\ 'build' : {
				\ 'windows' : 'make -f make_mingw32.mak',
				\ 'cygwin'  : 'make -f make_cygwin.mak',
				\ 'mac'     : 'make -f make_mac.mak',
				\ 'unix'    : 'make -f make_unix.mak',
				\ }}
	runtime! rc/*.vim
	runtime! after/rc/*.vim
	
	NeoBundleCheck
	call neobundle#end()
endif

" filetype
filetype on
filetype plugin on
filetype indent on
