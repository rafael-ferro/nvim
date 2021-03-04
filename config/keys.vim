" With a map leader it's possible to do extra key combinations
" like <Leader>w saves the current file
let mapleader = "\<Space>"
let g:mapleader = "\<Space>"

" Fast saving
nmap <Leader>w :w!<cr>
nmap <Leader>q :q!<cr>
nmap <Leader>wq :wq!<cr>

" Better indenting
vnoremap < <gv
vnoremap > >gv

if exists('g:vscode')

  " Simulate same TAB behavior in VSCode
  nmap <Tab> :Tabnext<CR>
  nmap <S-Tab> :Tabprev<CR>

else
  " https://vim.fandom.com/wiki/Avoid_the_escape_key
  :inoremap çç <Esc>
  :inoremap ÇÇ <Esc>

  " toogle highlight search
  nnoremap ~ :set hlsearch!<CR>
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
  "     cima    k
  " esquerda  h   l  direita
  "    baixo    j
  " map <Leader>j <C-W>j
  " map <Leader>k <C-W>k
  " map <Leader>h <C-W>h
  " map <Leader>l <C-W>l

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

  " search for visually selected text
  " https://vim.fandom.com/wiki/Search_for_visually_selected_text
  vnoremap // y/\V<C-R>"<CR>

  let g:EasyMotion_do_mapping = 0 " Disable default mappings

  " `s{char}{char}{label}`
  " Need one more keystroke, but on average, it may be more comfortable.
  nmap <Leader>s <Plug>(easymotion-overwin-f2)

  " Turn on case-insensitive feature
  let g:EasyMotion_smartcase = 1

  " JK motions: Line motions
  map <C-j> <Plug>(easymotion-j)
  map <C-k> <Plug>(easymotion-k)

  " TAB in general mode will move to text buffer
  nnoremap <silent> <TAB> :bnext<CR>
  " SHIFT-TAB will go back
  nnoremap <silent> <S-TAB> :bprevious<CR>

  " Move selected line / block of text in visual mode
  " shift + k to move up
  " shift + j to move down
  xnoremap K :move '<-2<CR>gv-gv
  xnoremap J :move '>+1<CR>gv-gv

  " Alternate way to save
  nnoremap <silent> <C-s> :w<CR>
  " Alternate way to quit
  nnoremap <silent> <C-Q> :wq!<CR>
  " Use control-c instead of escape
  nnoremap <silent> <C-c> <Esc>

  " Better window navigation
  nnoremap <C-h> <C-w>h
  nnoremap <C-j> <C-w>j
  nnoremap <C-k> <C-w>k
  nnoremap <C-l> <C-w>l

  " Terminal window navigation
  tnoremap <C-h> <C-\><C-N><C-w>h
  tnoremap <C-j> <C-\><C-N><C-w>j
  tnoremap <C-k> <C-\><C-N><C-w>k
  tnoremap <C-l> <C-\><C-N><C-w>l
  inoremap <C-h> <C-\><C-N><C-w>h
  inoremap <C-j> <C-\><C-N><C-w>j
  inoremap <C-k> <C-\><C-N><C-w>k
  inoremap <C-l> <C-\><C-N><C-w>l
  tnoremap <Esc> <C-\><C-n>

  " Use alt + hjkl to resize windows
  nnoremap <silent> <M-j>    :resize -2<CR>
  nnoremap <silent> <M-k>    :resize +2<CR>
  nnoremap <silent> <M-h>    :vertical resize -2<CR>
  nnoremap <silent> <M-l>    :vertical resize +2<CR>

  nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
endif
