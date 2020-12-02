call plug#begin('~/.config/nvim/plugged')

" general
"Plug 'benekastah/neomake'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'haya14busa/incsearch.vim'
Plug 'kien/ctrlp.vim'

" editing
Plug 'junegunn/vim-easy-align'
Plug 'mbbill/undotree'
Plug 'tpope/vim-commentary'
Plug 'airblade/vim-gitgutter'
Plug 'nathanaelkane/vim-indent-guides' " `,ig` to toggle
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'vim-scripts/camelcasemotion'
Plug 'ciaranm/detectindent'
Plug 'terryma/vim-multiple-cursors'

" python-mode https://github.com/python-mode/python-mode
"Plug 'python-mode/python-mode'

" deoplete https://github.com/Shougo/deoplete.nvim
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1
let g:python3_host_prog='/home/rafael/.anaconda3/bin/python'

" eye candy
Plug 'myusuf3/numbers.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" tabs
Plug 'mkitt/tabline.vim'

" themes
Plug 'nightsense/snow'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'kaicataldo/material.vim'
Plug 'morhetz/gruvbox'

call plug#end()


" Plugins configs

" neomake config
"autocmd! BufWritePost * Neomake
"autocmd BufLeave * QFix
"let g:neomake_place_signs = 0
"let g:neomake_open_list = 2

" CtrlP
let g:ctrlp_prompt_mappings={'PrtClearCache()':['<Leader><F5>']}
let g:ctrlp_prompt_mappings={'PrtdeleteEnt()':['<Leader><F7>']}
let g:ctrlp_match_window='bottom,order:btt,min:2,max:25'
set wildmenu " enhanced autocomplete
set wildignore+=*/tmp/*,*.so,*.zip,*.jpg,*.png,*.svg,*.ttf,

" make background transparent
"hi Normal ctermbg=NONE
"hi EndOfBuffer ctermbg=NONE
"hi LineNr ctermbg=234

