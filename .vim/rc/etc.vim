NeoBundle 'tpope/vim-surround'

NeoBundle 'vim-scripts/Align'
let g:Align_xstrlen = 3

NeoBundle 'Yggdroot/indentLine'
let g:indentLine_showFirstIndentLevel = -1

NeoBundle 'scrooloose/nerdcommenter'

NeoBundleLazy 'smancill/conky-syntax.vim', {'autoload': {'filetypes': ['conkyrc']}}

NeoBundle 'chrisbra/vim-zsh', {'autoload': {'filetypes': ['sh', 'zsh']}}

NeoBundleLazy 'elzr/vim-json', {'autoload': {'filetypes': ['json']}}
let g:vim_json_syntax_conceal = 0
