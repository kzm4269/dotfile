let s:requisite1 = has('lua')
let s:requisite2 = ( v:version > 703 || v:version == 703 && has('patch885') )
if !s:requisite1 || !s:requisite2
  finish
endif

NeoBundleLazy "Shougo/neocomplete.vim", {"autoload": {"insert": 1}}
let g:neocomplete#enable_at_startup = 1

let s:hooks = neobundle#get_hooks("neocomplete.vim")
function! s:hooks.on_source(bundle)
  set completeopt=menuone
  let g:acp_enableAtStartup = 0
  let g:neocomplete#enable_smart_case  = 1
  let g:neocomplete#enable_fuzzy_completion = 0
  let g:neocomplete#enable_auto_select = 0
  
  " patterns
  if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
  endif
  if !exists('g:neocomplete#sources#dictionary#dictionaries')
    let g:neocomplete#sources#dictionary#dictionaries = {}
  endif
  if !exists('g:neocomplete#force_omni_input_patterns')
    let g:neocomplete#force_omni_input_patterns = {}
  endif
  let g:neocomplete#keyword_patterns._ = '\h\w*'
  let g:neocomplete#sources#buffer#disabled_pattern = '\.log\|\.log\.\|\.jax\|Log.txt'
  
  " soruces
  call neocomplete#custom_source('_', 'sorters',  ['sorter_length'])
  call neocomplete#custom_source('_', 'matchers', ['matcher_head'])

  " keymap
  imap <expr> <TAB>    pumvisible() ? "\<C-n>" : "\<TAB>"
  smap <expr> <TAB>    pumvisible() ? "\<C-n>" : "\<TAB>"
  imap <expr> <S-TAB>  pumvisible() ? "\<C-p>" : "\<S-TAB>"
  imap <expr> <C-n>    pumvisible() ? "\<C-x>\<C-u>\<C-p>" : "\<C-n>"
  imap <expr> <C-u>    neocomplete#undo_completion()
  imap <expr> <C-c>    neocomplete#cancel_popup()
  imap <expr> <CR>     pumvisible() ? neocomplete#close_popup() : "\<CR>"
  imap <expr> <C-h>    pumvisible() ? neocomplete#smart_close_popup()."\<Left>" : "\<Left>"
endfunction
