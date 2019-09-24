" With a map leader it's possible to do extra key combinations
" like <Leader>w saves the current file
let mapleader = "\<Space>"
let g:mapleader = "\<Space>"

" Mapeamento mais confortavel para abnt2
" O dedo indicador fica posicionado sobre a tecla j
"     cima    L
" esquerda  J   Ç  direita
"    baixo    K
noremap ç l
noremap l k
noremap k j
noremap j h

" Fast saving
nmap <Leader>w :w!<cr>
nmap <Leader>q :q!<cr>
nmap <Leader>wq :wq!<cr>

" toogle highlight search
nnoremap h :set hlsearch!<CR>
nmap / :set hlsearch <CR> <Plug>(incsearch-forward)
nmap ? :set hlsearch <CR> <Plug>(incsearch-backward)
nmap € :set hlsearch <CR> <Plug>(incsearch-stay)

" buffer keys
nnoremap <Leader>bb :b#<CR>
nnoremap <Leader>bn :bn<CR>
nnoremap <Leader>bp :bp<CR>
nnoremap <Leader>bf :bf<CR>
nnoremap <Leader>bl :bl<CR>
nnoremap <Leader>bw :w<CR>:bd<CR>
nnoremap <Leader>bd :bd!<CR>
" new buffer/tab
nnoremap <Leader>e :enew<CR>

" window keys
nnoremap <Leader>w< <C-w><
nnoremap <Leader>w> <C-w>>
nnoremap <Leader>w- <C-w>-
nnoremap <Leader>w+ <C-w>+
nnoremap <Leader>w= <C-w>=
nnoremap <Leader>ws :split<CR>
nnoremap <Leader>wv :vsplit<CR>
nnoremap <Leader>wx :close<CR>

" Smart way to move between windows
"     cima    L
" esquerda  J   Ç  direita
"    baixo    K
map <Leader>k <C-W>j
map <Leader>l <C-W>k
map <Leader>j <C-W>h
map <Leader>ç <C-W>l

" %% to expand active buffer location on cmdline
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" CtrlP keys
nnoremap <Leader>pp :CtrlP<CR>
nnoremap <Leader>pf :CtrlP<CR>
nnoremap <Leader>pm :CtrlPMRUFiles<CR>
nnoremap <Leader>pr :CtrlPMRUFiles<CR>
nnoremap <Leader>pb :CtrlPBuffer<CR>

" Function keys
nnoremap <F2> :NERDTreeToggle<CR>
nnoremap <F3> :UndotreeToggle<CR>
nnoremap <F4> :NumbersToggle<CR>
nnoremap <F5> :NumbersOnOff<CR>
"nnoremap <F5> :wa<CR> :! make && make view<CR>
nnoremap <F6> :wa<CR> :! make<CR>
nnoremap <F7> :! make view<CR>
nnoremap <F8> :source $HOME/.config/nvim/init.vim<CR>
" indent whole file according to syntax rules
noremap <F9> gg=G

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>
" Don't use Ex mode, use Q for formatting
map Q gq

" remap number increment to C-s (C-a is already in use by tmux)
nmap <C-s> <C-a>

" Word count selection
"vnoremap <Leader>wc :w !wc -w<CR>
" Word count document
nmap <Leader>wc :w !wc -w<CR>

" override read-only permissions
cmap w!! %!sudo tee > /dev/null %

" allow ,, for vimsneak
nmap <Leader>, <Plug>SneakPrevious

" camelCase motion settings
map <silent> w <Plug>CamelCaseMotion_w
map <silent> b <Plug>CamelCaseMotion_b
map <silent> e <Plug>CamelCaseMotion_e
sunmap w
sunmap b
sunmap e

" start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)

" start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" folding
nmap <Leader>f zf%

" tern
autocmd FileType javascript nnoremap <silent> <buffer> gb :TernDef<CR>

" autocomplete
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
let g:UltiSnipsExpandTrigger="<C-j>"
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" colorizer
nmap <Leader>tc :ColorToggle<CR>

" https://stackoverflow.com/questions/676600/vim-search-and-replace-selected-text
" By pressing ctrl+r in visual mode, you will be prompted to enter text to replace with.
" Press enter and then confirm each change you agree with y or decline with n.
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

