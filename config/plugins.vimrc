call plug#begin('~/.config/nvim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

Plug 'haya14busa/incsearch.vim'

Plug 'kien/ctrlp.vim'

Plug 'junegunn/vim-easy-align'

Plug 'easymotion/vim-easymotion'

Plug 'mbbill/undotree'

Plug 'tpope/vim-commentary'

Plug 'airblade/vim-gitgutter'

Plug 'nathanaelkane/vim-indent-guides'

Plug 'tpope/vim-repeat'

Plug 'tpope/vim-surround'

Plug 'vim-scripts/camelcasemotion'

Plug 'ciaranm/detectindent'

Plug 'terryma/vim-multiple-cursors'

Plug 'mkitt/tabline.vim'

Plug 'myusuf3/numbers.vim'

Plug 'vim-airline/vim-airline'

Plug 'vim-airline/vim-airline-themes'

Plug 'morhetz/gruvbox'

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

call plug#end()


" Plugins configs

" CtrlP
let g:ctrlp_match_window='bottom,order:btt,min:2,max:25'

