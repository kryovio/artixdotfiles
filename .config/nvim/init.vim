call plug#begin('~/.nvim/plugged')

" Theming
Plug 'itchyny/lightline.vim'
Plug 'joshdick/onedark.vim'
Plug 'morhetz/gruvbox'

" Snippets
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'

" Fuzzy Finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" Cursor
Plug 'terryma/vim-multiple-cursors'

" Fern
Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/nerdfont.vim'
Plug 'lambdalisue/fern-renderer-nerdfont.vim'

" Individual Lang
Plug 'cespare/vim-toml', {'branch': 'main'}

" Other
Plug 'tpope/vim-surround'

call plug#end()

" Window Settings
syntax on
:set number relativenumber
:set nu rnu
:set background=dark
:set noshowmode

" Theme Settings
colorscheme onedark
let g:lightline = {'colorscheme': 'onedark'}

" Netrw begone
let g:loaded_netrw = 1
let g:loaded_netrwPlugin = 1
let g:loaded_netrwSettings = 1
let g:loaded_netrwFileHandlers = 1

" Fern
autocmd BufEnter * silent! :lcd%:p:h

let g:fern#drawer_width = 20
let g:fern#default_hidden = 1
let g:fern#disable_drawer_auto_quit = 1
let g:fern#renderer = "nerdfont"

augroup FernStartup
  autocmd! *
  autocmd FileType fern setlocal norelativenumber | setlocal nonumber
  autocmd VimEnter * ++nested Fern . -drawer -toggle | wincmd p
augroup END

" Other Stuff
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab
set autoindent

