NeoBundleLazy "sjl/gundo.vim", {
			\ "autoload": { "commands": ['GundoToggle']},
			\ }

let g:gundo_right = 1
let g:gundo_auto_preview = 0
let g:gundo_close_on_revert = 1

nnoremap <Leader>u :<C-u>GundoToggle<CR>
