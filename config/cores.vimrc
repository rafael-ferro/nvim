syntax on
syntax enable
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" Fix for alacritty
hi! Normal ctermbg=NONE guibg=NONE
hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE

" gruvbox
colorscheme gruvbox
set background=dark cursorline termguicolors
let g:airline_theme = 'gruvbox'
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=238 ctermbg=238
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=238 ctermbg=238

