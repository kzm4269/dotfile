NeoBundleLazy "sjl/gundo.vim", {
      \ "autoload": { "commands": ['GundoToggle']},
      \ }

let g:gundo_right = 1
let g:gundo_auto_preview = 0
let g:gundo_close_on_revert = 1
if has('python3')
  let g:gundo_prefer_python3 = 1
endif

nnoremap <Leader>u :<C-u>GundoToggle<CR>
