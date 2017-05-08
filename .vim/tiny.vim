"==== options
set nocompatible
if 1
  let g:vim_root = expand('$HOME/.vim')
endif

" show
set number
set title
set ruler
set showcmd
set laststatus=2
set lazyredraw
if exists('&showtabline')
  set showtabline=2
endif
if exists('&colorcolumn')
  set colorcolumn=80
endif
if exists('&relativenumber')
  set relativenumber
endif
if exists('&conceallevel')
  set conceallevel=0
endif
if exists('&display')
  set display=lastline
endif

" match
set showmatch
set matchtime=3
if exists('&matchpairs')
  set matchpairs=(:),[:],{:},<:>
endif

" wrap
set wrap
set textwidth=0

" bell
set vb t_vb=
set noerrorbells
set novisualbell

" cursor
set scrolloff=5
set whichwrap=b,s
if exists('&cursorline')
  set cursorline
endif
if exists('&virtualedit')
  set virtualedit+=block
endif

" search
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

" buffer
set hidden
if exists('&switchbuf')
  set switchbuf=useopen
endif

" edit
set backspace=indent,eol,start
if exists('&history')
  set history=1000
endif
if exists('&autoread')
  set autoread
endif
if has('clipboard')
  set clipboard=unnamed,autoselect
  if has('unnamedplus')
    set clipboard+=unnamedplus
  endif
endif

" backup, swap, undo
set nobackup
if exists('&swapfile')
  set noswapfile
endif
if exists('&undofile')
  set noundofile
endif
if exists('g:vim_root')
  set backup
  let &backupdir = g:vim_root . '/var/backup//'
  if !isdirectory(&backupdir)
    call mkdir(&backupdir, 'p')
  endif
  if exists('&swapfile')
    set swapfile
    let &directory = g:vim_root . '/var/swap//'
    if !isdirectory(&directory)
      call mkdir(&directory, 'p')
    endif
  endif
  if exists('&undofile')
    set undofile
    let &undodir = g:vim_root . '/var/undo//'
    if !isdirectory(&undodir)
      call mkdir(&undodir, 'p')
    endif
  endif
endif

" syntax
if has('syntax')
  syntax on
endif

highlight Visual term=reverse cterm=reverse ctermbg=none
if exists(':colorscheme')
  colorscheme molokai
endif

if exists('v:version')
  filetype on
  if v:version >= 600
    filetype indent on
    filetype plugin on
    set list listchars=tab:\.\ ,extends:»,precedes:« "不可視文字の設定
  endif
endif


"==== keymap
if 1
  let mapleader = ','
  noremap \  ,
endif

"---- toggle
nnoremap [Toggle] <Nop>
nmap T [Toggle]
nnoremap <silent> [Toggle]l :setl list!          <CR>:setl list?          <CR> 
nnoremap <silent> [Toggle]w :setl wrap!          <CR>:setl wrap?          <CR> 
nnoremap <silent> [Toggle]s :setl spell!         <CR>:setl spell?         <CR> 
nnoremap <silent> [Toggle]t :setl expandtab!     <CR>:setl expandtab?     <CR> 
nnoremap <silent> [Toggle]c :setl cursorline!    <CR>:setl cursorline?    <CR>
nnoremap <silent> [Toggle]r :setl relativenumber!<CR>:setl relativenumber?<CR>

"---- curor
" alias
noremap <Space>h ^
noremap <Space>l $
" wrap
nnoremap j gj
nnoremap k gk
" zz
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
noremap <C-u> <C-u>zz
noremap <C-d> <C-d>zz
" don't use arrow keys
nnoremap <Down>     <Nop>
inoremap <Right>    <Nop>
inoremap <Left>     <Nop>
inoremap <Up>       <Nop>
inoremap <Down>     <Nop>
nnoremap <Right>    <Nop>
nnoremap <Left>     <Nop>
nnoremap <Up>       <Nop>
noremap  <PageUp>   <Nop>
noremap  <PageDown> <Nop>
inoremap <PageUp>   <Nop>
inoremap <PageDown> <Nop>
noremap  <Home>     <Nop>
noremap  <End>      <Nop>
inoremap <Home>     <Nop>
inoremap <End>      <Nop>

"---- search
vnoremap <silent> * "vy/\V<C-r>=substitute(escape(@v, '\/'), '\n', '\\n', 'g')<CR><CR>
if exists(':nohlsearch')
  nmap <Esc><Esc> :<C-u>nohlsearch<CR>
endif

"---- tab
if exists(':tabnew')
  nnoremap [Tab] <Nop>
  nmap     <Tab> [Tab]
  nnoremap [Tab]<TAB> :<C-u>tabnext<CR>
  nnoremap [Tab]h     :<C-u>tabprev<CR>
  nnoremap [Tab]j     :<C-u>tabprev<CR>
  nnoremap [Tab]k     :<C-u>tabnext<CR>
  nnoremap [Tab]l     :<C-u>tabnext<CR>
  nnoremap [Tab]n     :<C-u>tabnew<CR>
  nnoremap [Tab]c     :<C-u>tabclose<CR>
  nnoremap [Tab]q     :<C-u>tabclose<CR>
  nnoremap <silent> [Tab]1 :<C-u>tabnext1<CR>
  nnoremap <silent> [Tab]2 :<C-u>tabnext2<CR>
  nnoremap <silent> [Tab]3 :<C-u>tabnext3<CR>
  nnoremap <silent> [Tab]4 :<C-u>tabnext4<CR>
  nnoremap <silent> [Tab]5 :<C-u>tabnext5<CR>
  nnoremap <silent> [Tab]6 :<C-u>tabnext6<CR>
  nnoremap <silent> [Tab]7 :<C-u>tabnext7<CR>
  nnoremap <silent> [Tab]8 :<C-u>tabnext8<CR>
  nnoremap <silent> [Tab]9 :<C-u>tabnext9<CR>
endif

" etc
nnoremap cn :cnext<CR>
nnoremap cp :cprevious<CR>
nnoremap o oX<C-h>
nnoremap O OX<C-h>
cnoremap w!! w !sudo tee > /dev/null % 

