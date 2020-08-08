set title
set number
set cursorline
set smartindent
set showmatch
set laststatus=2
set noswapfile
set nobackup
set showcmd
set wildmenu
set clipboard=unnamed

set scrolloff=5

set ttimeoutlen=10

filetype indent on
set tabstop=4
set shiftwidth=4
set expandtab

set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch
nmap <Esc><Esc> :nohlsearch<CR><Esc>

nnoremap j gj
nnoremap k gk

set background=dark
colorscheme hybrid

function! s:load(file) abort
    let s:path = expand('~/.config/nvim/rc/' . a:file . '.vim')
    if filereadable(s:path)
        execute 'source' fnameescape(s:path)
    endif
endfunction

call s:load('plugins')
