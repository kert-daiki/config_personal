"esto es un archivo de configuracion de plugins para no hacerlos todo en el init
call plug#begin()
"lsputils
Plug 'RishabhRD/popfix'
Plug 'RishabhRD/nvim-lsputils'

"lua-snipps
" Plug 'L3MON4D3/LuaSnip'

"formartter
" Plug 'mhartington/formatter.nvim'

"native-lsp
Plug 'neovim/nvim-lspconfig'  " ~/.config/nvim/after/plugin/lspconfig.rc.vim
Plug 'hrsh7th/nvim-compe' " ~/.config/nvim/after/plugin/compe-config.rc.lua
Plug 'glepnir/lspsaga.nvim' " ~/.config/nvim/after/plugin/lspsaga.rc.vim

"nvim-jdtls
" Plug 'mfussenegger/nvim-jdtls' " ~/.config/nvim/after/plugin/jdtls_setup.lua

"nerdtree o arbol de busquedas
Plug 'preservim/nerdtree' " ./maps.vim
Plug 'tiagofumo/vim-nerdtree-syntax-highlight' "  ./maps.vim
"Plug 'ryanoasis/vim-devicons'

"jedi deoplete plugin
"Plug 'zchee/deoplete-jedi'

"Ale un analizador de codigo y syntax 
"Plug 'dense-analysis/ale'

"Plug 'deoplete-plugins/deoplete-zsh'

"para completar los corchetes o parentesis
Plug 'jiangmiao/auto-pairs' " ~/.config/trash/description_plugins/autopairs.txt

Plug 'morhetz/gruvbox' " tema principal de mi configuracion

"vim-airlines para el status y los buffers
Plug 'vim-airline/vim-airline' " ./maps.vim
"temas para el arilines
Plug 'vim-airline/vim-airline-themes' " ./maps.vim

"lolsearch para realizar busquedas mejores
Plug 'mox-mox/vim-localsearch'

"sensible
Plug 'tpope/vim-sensible'

"fzf
"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
"aun no tengo configurados las keymaps 

"vim ctrl space to mapping buffers or tags 
"Plug 'vim-ctrlspace/vim-ctrlspace'

"vim syntastic
Plug 'vim-syntastic/syntastic' " ~/.config/nvim/after/plugin/syntastic.vim

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

"comment plugin
Plug 'scrooloose/nerdcommenter' " ~/.config/nvim/after/plugin/nerdcconfig.vim
" ~/.config/trash/description_plugins/nerdcommenter_d.txt

"surround o algoasi
Plug 'tpope/vim-surround' " ~/.config/trash/description_plugins/surrounds.txt

"visual
 Plug 'flazz/vim-colorschemes'

call plug#end()


"configuracion de ctrlspace
"let g:CtrlSpaceDefaultMappingKey = "<C-space> "

"set noshowmode
"
"hi EndOfBuffer guifg=bg guibg=bg
"hi LineNr guibg=bg
"set foldcolumn=2
"hi foldcolumn guibg=bg
"hi VertSplit guibg=#302d38 guifg=#302d38
"autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE " transparent bg

" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger='<tab>'

" shortcut to go to next position
let g:UltiSnipsJumpForwardTrigger='<c-j>'

" shortcut to go to previous position
let g:UltiSnipsJumpBackwardTrigger='<c-k>'



