syntax on
syntax enable
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

set background=dark
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=238 ctermbg=238
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=238 ctermbg=238
colorscheme onehalfdark
let g:airline_theme = 'onehalfdark'

" set the background automatically based on the time at which vim is launched:
"if strftime('%H') >= 7 && strftime('%H') < 19
"  set background=light
"  autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=7 ctermbg=7
"  autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=7 ctermbg=7
"  colorscheme onehalflight
"  let g:airline_theme = 'onehalflight'
"else
"  set background=dark
"  autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=238 ctermbg=238
"  autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=238 ctermbg=238
"  colorscheme onehalfdark
"  let g:airline_theme = 'onehalfdark'
"endif




