syntax on
set mouse=a
set clipboard=unnamed
set showcmd
set ruler
set encoding=utf8
set showmatch
set sw=4
let mapleader = ","
set number relativenumber
set laststatus=2
set backspace=2
set guioptions-=T
set guioptions-=L
imap jk <Esc>

"Mapping to reload 
nmap <leader>w :w <CR>
nmap <leader>so :source % <CR>
nmap <leader>q :q <CR>

nmap <leader>nt :NERDTreeFind<CR>
nnoremap <silent> ,<space> :nohlsearch<CR>

if has("gui_running")

      if has("gui_gtk2")
	      set guifont=Inconsolata\ 12
      elseif has("gui_macvim")
	      set guifont=Menlo\ Regular:h14
      elseif has("gui_win32")
              set guifont=Consolas:h11:cANSI
      endif
endif

" Specify a directory for plugins
" " - For Neovim: stdpath('data') . '/plugged'
" " - Avoid using standard Vim directory names like 'plugin'
" "
" "




call plug#begin('~/AppData/Local/nvim/plugged')

Plug 'joshdick/onedark.vim'
Plug 'iCyMind/NeoSolarized'
" Temas
Plug 'morhetz/gruvbox'
" "IDE
Plug 'easymotion/vim-easymotion'
" "Nerdtree
Plug 'preservim/nerdtree'
"navigator
Plug 'christoomey/vim-tmux-navigator'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

 
 
Plug 'tpope/vim-sensible'
"tema minimalist
Plug 'dikiaap/minimalist'




call plug#end()

set t_Co=256
syntax on
colorscheme minimalist

let g:airline_theme='minimalist'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
