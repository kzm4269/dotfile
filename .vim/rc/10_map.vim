"-- normal mode
if 1
  let mapleader = ','
  noremap \  ,
endif

" overwrite
noremap <Space>h ^
noremap <Space>l $

nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
noremap <C-u> <C-u>zz
noremap <C-d> <C-d>zz

nnoremap o oX<C-h>
nnoremap O OX<C-h>

nnoremap Y y$

" search
vnoremap <silent> * "vy/\V<C-r>=substitute(escape(@v, '\/'), '\n', '\\n', 'g')<CR><CR>
if exists(':nohlsearch')
  nmap <Esc><Esc> :<C-u>nohlsearch<CR>
endif

" tab
if exists(':tabnew')
  nnoremap [Tab] <Nop>
  nmap     <C-t> [Tab]
  nnoremap [Tab]<C-t> :<C-u>tabnext<CR>
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

" toggle
nnoremap [Toggle] <Nop>
nmap t [Toggle]
nnoremap <silent> [Toggle]c :setl cursorline!    <CR>:setl cursorline?    <CR>
nnoremap <silent> [Toggle]e :setl expandtab!     <CR>:setl expandtab?     <CR>
nnoremap <silent> [Toggle]l :setl list!          <CR>:setl list?          <CR>
nnoremap <silent> [Toggle]n :setl number!        <CR>:setl number?        <CR>
nnoremap <silent> [Toggle]r :setl relativenumber!<CR>:setl relativenumber?<CR>
nnoremap <silent> [Toggle]s :setl spell!         <CR>:setl spell?         <CR>
nnoremap <silent> [Toggle]w :setl wrap!          <CR>:setl wrap?          <CR>

" Explore
nnoremap <Leader>e :Explore<CR>

"-- insert mode

" Emacs like
inoremap <C-a> <C-o>^
inoremap <C-e> <C-o>$
inoremap <C-b> <C-o>h
inoremap <C-n> <C-o>gj
inoremap <C-p> <C-o>gk
inoremap <C-f> <C-o>l
inoremap <C-k> <C-o><S-d>
inoremap <C-h> <BackSpace>
inoremap <C-d> <Delete>
inoremap <C-y> <C-o>p
inoremap <C-@> <C-o>v
