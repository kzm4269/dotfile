NeoBundleLazy "Shougo/neosnippet.vim", {
      \ "depends": ["honza/vim-snippets", "Shougo/neosnippet-snippets"],
      \ "autoload": {
      \   "insert": 1,
      \   "filetypes": "neosnippet",
      \ }}
let g:neosnippet#disable_runtime_snippets = {'_' : 1}
let s:hooks = neobundle#get_hooks("neosnippet.vim")
function! s:hooks.on_source(bundle)
  " Plugin key-mappings.
  imap <C-k> <Plug>(neosnippet_expand_or_jump)
  smap <C-k> <Plug>(neosnippet_expand_or_jump)
  xmap <C-k> <Plug>(neosnippet_expand_target)
  " SuperTab like snippets behavior.
  imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
        \ "\<Plug>(neosnippet_expand_or_jump)"
        \: pumvisible() ? "\<C-n>" : "\<TAB>"
  smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
        \ "\<Plug>(neosnippet_expand_or_jump)"
        \: "\<TAB>"
  " Enable snipMate compatibility feature.
  let g:neosnippet#enable_snipmate_compatibility = 1
  " Tell Neosnippet about the other snippets
  let g:neosnippet#snippets_directory=[
        \ g:vim_root . '/snippets', 
        \ g:bundle_root . '/neosnippet-snippets/neosnippets',
        \ g:bundle_root . '/vim-snippets/snippets']
endfunction
