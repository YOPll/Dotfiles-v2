syntax on
set number
set relativenumber
set ruler
" backup settings 
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile


set splitbelow splitright

set incsearch


set colorcolumn=80
let g:airline_powerline_fonts = 1




nnoremap S :%s//g<left><left>

call plug#begin('~/.vim/plugged')

Plug 'mbbill/undotree'
Plug 'jreybert/vimagit'

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-default branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'


Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'

Plug 'pbondoer/vim-42header'




" Initialize plugin system
call plug#end()


nnoremap <F5> :UndotreeToggle<CR>
