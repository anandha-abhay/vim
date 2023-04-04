" Docs for these options https://vimdoc.sourceforge.net/htmldoc/options.html
set nocompatible
set history=1000
set title
set scrolloff=8
set ruler
set softtabstop=2
set tabstop=2
set shiftwidth=2
set ai
set expandtab
set smarttab
set number
set textwidth=0
set colorcolumn=0
set backspace=indent,eol,start

" Themes and Colors
filetype on
filetype plugin on
filetype indent on
syntax on
set syntax=whitespace
set background=dark
let g:solarized_termcolors=256
let g:solarized_contrast="high"
colorscheme solarized
set colorcolumn=80

" Git Commit Settings
au FileType gitcommit set tw=72 | set spell | set colorcolum=50

"
" File Opening
set wildmode=longest,list

" Search
set hlsearch
set incsearch
set visualbell
set ignorecase
set smartcase

" Global undo
set undofile
set undodir="~/.vimundo"
set undolevels=100
set undoreload=100

" Silly Escape
inoremap jk <esc>

" Tab Bindings
map <C-t> :tabnew %<cr>
map <C-h> :tabprevious<cr>
map <C-l> :tabnext<cr>

" Center Screen Rebind
nmap <space> zz

" Line Number Toggling
map <leader>nno :set no number!<cr>
" Absolute/relative number toggle
map <leader>nn :set no rnu!<cr>

" Autocomplete Plugins
let g:rubycomplete_rails=1
let g:javascript_plugin_jsdoc=1

" After Save Hooks
" Kill trailing whitespaces
autocmd BufWritePre * :%s/\s\+$//e

" ctrlp settings
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . --cached --exclude-standard']

" Disable EX-MODE
"nnoremap Q<Nop>

" Nerd Tree Settings
let NERDTreeShowHidden=1
function! StartUp()
  if 0 == argc()
    NERDTree
  end
endfunction

autocmd VimEnter * call StartUp()
