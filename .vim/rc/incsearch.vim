NeoBundle 'easymotion/vim-easymotion'
let g:EasyMotion_do_mapping = 0
let g:EasyMotion_smartcase = 1
let g:EasyMotion_startofline = 0
nmap s <Plug>(easymotion-overwin-f2)
vmap s <Plug>(easymotion-bd-f2)

NeoBundle 'haya14busa/incsearch.vim'
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

NeoBundle 'haya14busa/incsearch-fuzzy.vim'
function! s:config_fuzzyall(...) abort
	return extend(copy({
				\   'converters': [incsearch#config#fuzzy#converter()],
				\ }), get(a:, 1, {}))
endfunction
noremap <silent><expr> z/ incsearch#go(<SID>config_fuzzyall())

NeoBundle 'haya14busa/incsearch-easymotion.vim'
function! s:config_easyfuzzymotion(...) abort
	return extend(copy({
				\   'converters': [incsearch#config#fuzzy#converter()],
				\   'modules': [incsearch#config#easymotion#module()],
				\   'keymap': {"\<CR>": '<Over>(easymotion)'},
				\   'is_expr': 0,
				\   'is_stay': 1
				\ }), get(a:, 1, {}))
endfunction
noremap <silent><expr> <Space>/ incsearch#go(<SID>config_easyfuzzymotion())

