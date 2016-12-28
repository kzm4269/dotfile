NeoBundleLazy 'Shougo/unite.vim', {
			\ 'autoload': {
			\	 'commands': ['Unite', 'UniteWithBufferDir']
			\ }}
NeoBundle 'Shougo/neomru.vim'

let g:vinarise_enable_auto_detect = 1

nnoremap [Unite]   <Nop>
nmap     <Leader>f [Unite]
nnoremap <silent>  [Unite]u :<C-u>Unite -no-split<Space>
nnoremap <silent>  [Unite]b :<C-u>Unite buffer<CR>
nnoremap <silent>  [Unite]f :<C-u>Unite file<CR>
nnoremap <silent>  [Unite]m :<C-u>Unite file_mru<CR>
nnoremap <silent>  [Unite]g :<C-u>Unite grep<CR>
