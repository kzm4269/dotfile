if exists('&compatible')
  set nocompatible
endif

" optimization
set lazyredraw

" title of window
set title

" line number
set number
if exists('&relativenumber')
  set relativenumber
endif

" status
set ruler
set showcmd
set laststatus=2
set statusline=%F%m%r%w%=%{&ft}\ %{&fenc}\ %{&ff}\ %l/%L\ %v\ 0x%04B
if exists('&cursorline')
  set cursorline
endif
if exists('&cursorcolumn')
  set nocursorcolumn
endif
if exists('&colorcolumn')
  set colorcolumn=80,120
endif
if exists('&showtabline')
  set showtabline=2
endif

" non-printable characters
if exists('&display')
  set display+=uhex
endif
if exists('v:version')
  if v:version >= 600
    set list listchars=tab:\.\ ,extends:»,precedes:«
  endif
endif
if exists('&conceallevel')
  set conceallevel=0
endif

" brackets
set showmatch
set matchtime=1
if exists('&matchpairs')
  set matchpairs=(:),[:],{:},<:>
endif

" wrapping
set wrap
set textwidth=0
set whichwrap=b,s
set backspace=indent,eol,start
if exists('&display')
  set display+=lastline
endif
if exists('&virtualedit')
  set virtualedit+=block
endif

" scrolling
set scrolloff=5

" searching
set noignorecase
set incsearch
set hlsearch
set infercase

" indent
set autoindent
set cindent
set smartindent
set shiftround
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

" bell
set vb t_vb=
set noerrorbells
set novisualbell

" buffer
set hidden
if exists('&switchbuf')
  set switchbuf=useopen
endif
if exists('&autoread')
  set autoread
endif

" menu
if exists('&pumheight')
  set pumheight=10
endif

" clipboard
if has('clipboard')
  if !has('nvim')
    set clipboard=unnamed,autoselect
  endif
  if has('unnamedplus')
    set clipboard+=unnamedplus
  endif
endif

" backup, swap, undo, history
set nobackup
set nowritebackup
if exists('&swapfile')
  set noswapfile
endif
if exists('&undofile')
  set noundofile
endif
if exists('&history')
  set history=10000
endif

" syntax, filetype
if has('syntax')
  syntax on
endif

if exists('v:version')
  filetype on
  if v:version >= 600
    filetype indent on
    filetype plugin on
  endif
endif

