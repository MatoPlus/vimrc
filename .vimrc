
"__   _(_)_ __ ___  _ __ ___ 
"\ \ / / | '_ ` _ \| '__/ __|
" \ V /| | | | | | | | | (__ 
"  \_/ |_|_| |_| |_|_|  \___|

set nocompatible             
set encoding=utf-8
filetype indent on
syntax on

" colortheme
colorscheme koehler


" Expand command history
set history=500

" Set to auto read when a file is changed from the outside
set autoread

" Configure backspace to make sure it acts like a backspace
set backspace=eol,start,indent

" Set tab
set tabstop=4
set shiftwidth=4
set expandtab

" Smarttab deletes empty tabs when trying to delete tabbed space
set smarttab

" Set distance from bottom when scrolling
set scrolloff=7

set autoindent
set smartindent
set ruler
set number
set relativenumber
set wrap

" Enable bash-like tab-completion selection view
set wildmode=longest,list,full

set splitbelow
set splitright

" Hightsearch results
set hlsearch
highlight Search ctermbg=none cterm=underline

" Find while you search, make search easier to use.
set incsearch
set ignorecase
set smartcase

" Disable backups
set nobackup
set nowritebackup
set noswapfile

" Disable error bells
set noerrorbells
set novisualbell

" Always enable statusbar, required for lightline
set laststatus=2

" vim-Livedown
let g:livedown_browser = "firefox"

" vim-latex-live-preview
let g:livepreview_previewer = 'zathura'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<leader><tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:ycm_show_diagnostics_ui = 0
let g:ycm_filetype_blacklist = {
      \ 'tagbar': 1,
      \ 'notes': 1,
      \ 'netrw': 1,
      \ 'unite': 1,
      \ 'text': 1,
      \ 'vimwiki': 1,
      \ 'pandoc': 1,
      \ 'infolog': 1,
      \ 'mail': 1
      \}

let g:markdown_fenced_languages = ['coffee', 'css', 'erb=eruby', 'javascript', 'js=javascript', 'json=javascript', 'ruby', 'sass', 'xml', 'c', 'python', 'java']
let g:markdown_syntax_conceal = 0

highlight ALEError ctermbg=none cterm=underline ctermfg=red
highlight ALEWarning ctermbg=none cterm=underline ctermfg=grey


"                              _             
"  _ __ ___   __ _ _ __  _ __ (_)_ __   __ _ 
" | '_ ` _ \ / _` | '_ \| '_ \| | '_ \ / _` |
" | | | | | | (_| | |_) | |_) | | | | | (_| |
" |_| |_| |_|\__,_| .__/| .__/|_|_| |_|\__, |
                 "|_|   |_|            |___/ 

let mapleader = ","

" Sudo saves the file with :W<CR>. Avoid permission error
command W w !sudo tee % > /dev/null

" Fast save/quit
nmap <leader>w :w!<CR>
nmap <leader>q :wq!<CR>

" Shortcutting split navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Avoid the Esc key
imap fd <Esc>

" Move a line of text using SHIFT+[jk]
nmap <S-j> mz:m+<CR>`z
nmap <S-k> mz:m-2<CR>`z
vmap <S-k> :m'<-2<CR>`>my`<mzgv`yo`z
vmap <S-j> :m'>+<CR>`<my`>mzgv`yo`z

" Disable search highlight temporarily
nnoremap <ESC><ESC> :silent! nohlsearch<CR>

" Turn on spell-check
map <F9> :setlocal spell! spelllang=en_ca<CR>

" Copy-paste
vnoremap <leader>c "+y
map <leader>p "+p

" Run a detached term on current directory
map <C-t> :silent !$term bash -c "cd '%:p:h'; bash" &<CR>

" NerdTree
map <C-m> :NERDTreeToggle<CR>

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

"                                                     _             
" _ __  _ __ ___   __ _ _ __ __ _ _ __ ___  _ __ ___ (_)_ __   __ _ 
"| '_ \| '__/ _ \ / _` | '__/ _` | '_ ` _ \| '_ ` _ \| | '_ \ / _` |
"| |_) | | | (_) | (_| | | | (_| | | | | | | | | | | | | | | | (_| |
"| .__/|_|  \___/ \__, |_|  \__,_|_| |_| |_|_| |_| |_|_|_| |_|\__, |
"|_|              |___/                                       |___/ 

" Enable grey vertical column for listed filetypes
autocmd FileType java,python,cpp,c set colorcolumn=120 | highlight ColorColumn ctermbg=grey

" complie and execute current py2 file
autocmd FileType python nnoremap <F2> :!python %<CR>
" complie and execute current py3 file
autocmd FileType python nnoremap <F3> :!python3 %<CR>
" complie and execute java project
autocmd FileType java nnoremap <F3> :!find -name "*.java" > sources.tmp && javac @sources.tmp && rm sources.tmp && java %:r<CR>
" complie and execute c file
autocmd FileType c nnoremap <F2> :!gcc -o %:r.out % && ./%:r.out<CR>


filetype off                  " required
"                       _ _      
"__   ___   _ _ __   __| | | ___ 
"\ \ / / | | | '_ \ / _` | |/ _ \
" \ V /| |_| | | | | (_| | |  __/
"  \_/  \__,_|_| |_|\__,_|_|\___|
                                
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo

Plugin 'ycm-core/YouCompleteMe'
Plugin 'w0rp/ale'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'aperezdc/vim-template'
Plugin 'itchyny/lightline.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'ryanoasis/vim-devicons'
Plugin 'scrooloose/nerdcommenter'
Plugin 'mbbill/undotree'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-surround'
Plugin 'shime/vim-livedown'
Plugin 'xuhdev/vim-latex-live-preview'
Plugin 'junegunn/goyo.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'cohama/lexima.vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'gabrielelana/vim-markdown'
Plugin 'junegunn/vim-easy-align'
Plugin 'jceb/vim-orgmode'

" All of your Plugins must be added before the following line

call vundle#end()            " required

filetype plugin indent on
