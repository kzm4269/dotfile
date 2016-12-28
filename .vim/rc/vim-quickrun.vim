NeoBundleLazy 'thinca/vim-quickrun', {
			\ 'autoload': {
			\   'mappings': [['nxo', '<Plug>(quickrun)']]
			\ }}

let s:hooks = neobundle#get_hooks('vim-quickrun')
function! s:hooks.on_source(bundle)
	let g:quickrun_config = {}
	let g:quickrun_config['_'] = {
				\ 'outputter/buffer/split' : ':bel 8sp',
				\ 'runner': 'vimproc',
				\ 'runner/vimproc/sleep': 50,
				\ 'runner/vimproc/updatetime': 50,
				\ 'outputter/buffer/close_on_empty' : 1,
				\ }
	let g:quickrun_config['matlab'] = {
				\ 'command': 'octave'
				\ }
	let g:quickrun_config['markdown'] = {
				\ 'outputter' : 'browser',
				\ 'args' : '--mathjax',
				\ }
	set splitright
endfunction

nmap <Leader>r <Plug>(quickrun)
