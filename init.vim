" Settings{{{
" enable syntax and plugins (for netrw)
syntax enable
syntax on
filetype plugin on
filetype indent plugin on
set omnifunc=syntaxcomplete#Complete

set number
set termguicolors " Enables 24-bit RGB color
set list
set relativenumber
set path+=** " search directories upwards and downwards
set wildmenu
set incsearch
set smartcase " automatically switch to case-sensitive when using uppercase
set ignorecase
set noswapfile
set cursorline
set lazyredraw " screen will not redraw while executing macros
set clipboard+=unnamedplus " ALWAYS use the clipboard for ALL operations no need to specify '+' and/or '*' registers 
" backup settings 
set nobackup
set undodir=~/.vim/undodir
set undofile
set splitbelow splitright
set mouse=a
set wildmenu
"set colorcolumn=80
let g:airline_powerline_fonts = 1

"}}}

call plug#begin('~/.vim/plugged')
Plug 'tomtom/tcomment_vim'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'mlaursen/vim-react-snippets'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/jsonc.vim'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'plasticboy/vim-markdown'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'ianks/vim-tsx'
Plug 'tpope/vim-repeat'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'airblade/vim-gitgutter'
" auto completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Search tool for vim
Plug 'rking/ag.vim'
" Edit selected text in new window/tab/region
Plug 'chrisbra/NrrwRgn'
" Themes
Plug 'morhetz/gruvbox'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'arcticicestudio/nord-vim'
Plug 'rakr/vim-one'
Plug 'dylanaraps/wal.vim'
Plug 'mhartington/oceanic-next'
Plug 'wadackel/vim-dogrun'
Plug 'arzg/vim-colors-xcode'
Plug 'altercation/vim-colors-solarized'
Plug 'pbondoer/vim-42header'
call plug#end()



let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <F5> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>


"###################################
" Use Ctrl + s to save file
inoremap <C-i> <esc>:w<cr>a
nnoremap <C-i> :w
"####################################













if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
