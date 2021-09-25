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

"im using coc so no need for this

" imap ss <esc>:w<cr>i
"imap <c-p> <esc>:
"
"augroup filetype_c
"autocmd filetype c ia ma int main (int argc, char **argv)<cr>{<cr><tab>return (0);<cr>}
"	autocmd filetype c ia iff if ()<cr>{<cr><cr>}<esc>3kf)i
"	autocmd filetype c ia wh while ()<cr>{<cr><cr>}<esc>3kf)i
"	autocmd filetype c ia fo for (;;)<cr>{<cr><cr>}<esc>3kf)i
"	autocmd filetype c ia pr printf("\n");<esc>4hi
"	autocmd filetype c ia sc scanf(,"");<esc>4hi
"	autocmd filetype c ia br break;
"	autocmd filetype c ia re return ();<esc>hi
"	autocmd filetype c ia in int ;
"	autocmd filetype c ia fl float ;
"	autocmd filetype c ia do double ;
"	autocmd filetype c ia ch char ;
"	autocmd filetype c ia stg char str[10];
"	autocmd filetype c ia [ []<esc>i
"	autocmd filetype c ia inc #include <><esc>i
"	autocmd filetype c ia st string.h
"	autocmd filetype c ia std stdio.h
"	autocmd filetype c ia un unistd.h
"	autocmd filetype c ia vfun void func ()<cr>{<cr><cr>}<esc>3kwea
"	autocmd filetype c ia ifun int func ()<cr>{<cr><cr>}<esc>3kwea
"	autocmd filetype c ia dfun double func ()<cr>{<cr><cr>}<esc>3kwea
"	autocmd filetype c ia ffun float func ()<cr>{<cr><cr>}<esc>3kwea
"	autocmd filetype c ia cfun char func ()<cr>{<cr><cr>}<esc>3kwea
"augroup end
