NeoBundleLazy 'Shougo/vimfiler', {
			\ "depends": ["Shougo/unite.vim"],
			\ "autoload": {
			\ "commands": ["VimFiler", "VimFilerExplorer", "VimFilerBufferDir"],
			\ "mapping": ['<plug>(vimfiler_switch)'],
			\ }}

" hook
let s:hooks = neobundle#get_hooks("vimfiler")
function! s:hooks.on_source(bundle)
	let g:vimfiler_as_default_explorer = 1
	let g:vimfiler_enable_auto_cd = 1
	let g:vimfiler_safe_mode_by_default = 0
	let g:vimfiler_ignore_pattern = '\%(^\(\.\)\|\.\(o\|pyc\|class\)$\)'
	
	autocmd MyAutoCmd FileType vimfiler call s:vimfiler_mapping()
	function! s:vimfiler_mapping()
		nmap <buffer> R <Plug>(vimfiler_redraw_screen)
	endfunction
endfunction

command! Ex execute ":VimFilerBufferDir -find"
nnoremap <Leader>e :<C-u>VimFilerBufferDir -find<CR>
