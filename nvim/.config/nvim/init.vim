" Options
" set background=dark
set clipboard=unnamedplus
set completeopt=noinsert,menuone,noselect
" set cursorline
set hidden
set inccommand=split
set mouse=a
set number
set relativenumber
set noshowmode
set splitbelow splitright
set title
set ttimeoutlen=0
set whichwrap+=<,>,h,l,[,]
set wildmenu

" Tabs size
set expandtab
set shiftwidth=2
set tabstop=2

" Syntax
filetype plugin indent on
syntax on

" Terminal
set t_Co=256
set termguicolors

" Italics
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"

call plug#begin()
    " Appearance
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'nvim-tree/nvim-web-devicons'
    " Plug 'nathanaelkane/vim-indent-guides'
    Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
    Plug 'goolord/alpha-nvim'

    " Utilities
    Plug 'sheerun/vim-polyglot'
    Plug 'jiangmiao/auto-pairs'
    Plug 'ap/vim-css-color'
    Plug 'rcarriga/nvim-notify'   
    Plug 'akinsho/bufferline.nvim'

    " File browser
    Plug 'nvim-tree/nvim-web-devicons' " optional, for file icons
    Plug 'nvim-tree/nvim-tree.lua'
    
    " Completion / linters / formatters
    Plug 'neoclide/coc.nvim', { 'branch': 'release' }
    Plug 'godlygeek/tabular'
    Plug 'preservim/vim-markdown'

    " Git
    Plug 'airblade/vim-gitgutter'

    " Integration
    Plug 'andweeb/presence.nvim'
call plug#end()

lua require("user-nvim-tree")
lua require("user-catppuccin")
lua require("user-coc-nvim")
lua require("user-nvim-notify")
lua require("user-bufferline")
lua require("user-presence")
lua require("user-alpha")

let g:airline_theme = 'catppuccin'
let g:airline_powerline_fonts = 1
let g:airline_left_sep = "\ue0b4"
let g:airline_right_sep = "\ue0b6"
let g:airline_section_z = airline#section#create(["\ue0a1" . '%{line(".")}' . "\ue0a3" . '%{col(".")}'])

set list
set listchars=tab:>-,space:·
