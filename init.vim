"""maps espéciales para mi teclado personal razer 
"imap « <
"imap » >
nmap ŧ :2,3s/^"/<CR>
nmap ¢ :2,3s/^/"<CR>



"esto carga los plugins y sus configuraciones 
source ~/.config/nvim/plug.vim
source ~/.config/nvim/after/plugin/nerdcconfig.vim
source ~/.config/nvim/colorscheme.vim
source ~/.config/nvim/after/plugin/syntastic.vim
source ~/.config/nvim/maps.vim


"imports "{{{
" runtime ./maps.vim
"}}}


set shell=zsh
set hidden
set mouse=a
set clipboard+=unnamedplus
set showcmd
set showtabline=0
set ruler
set encoding=utf8
set showmatch
"set sw=4
let mapleader = ","
set number relativenumber
set laststatus=2
set backspace=2
imap jk <Esc>
set hidden 
set path+=**
set nocompatible
set nohlsearch
filetype on
filetype plugin indent on 
filetype plugin on
syntax enable 


if has("gui_running")

      if has("gui_gtk2")
	      set guifont=Inconsolata\ 12
      elseif has("gui_macvim")
	      set guifont=Menlo\ Regular:h14
      elseif has("gui_win32")
              set guifont=Consolas:h11:cANSI
      endif
endif

highlight link CompeDocumentation NormalFloat



