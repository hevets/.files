" hevets vimrc bitbucket has my real config now

" Vundle requirements
set nocompatible                 " be iMproved
filetype off                     " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" vundle !!!
Bundle 'gmarik/vundle'

" color scheme
Bundle 'quanganhdo/grb256'

" general bundles
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'corntrace/bufexplorer'
Bundle 'godlygeek/tabular'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdcommenter'
Bundle 'tpope/vim-surround'
Bundle 'Raimondi/delimitMate'
Bundle 'airblade/vim-gitgutter'
Bundle 'ervandew/supertab'
Bundle 'mileszs/ack.vim'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'terryma/vim-multiple-cursors'

" snippet bundles
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
Bundle "honza/vim-snippets"

" html/css bundles
Bundle 'nono/vim-handlebars'
Bundle 'groenewege/vim-less'

" javascript bundles
Bundle 'pangloss/vim-javascript'
Bundle 'briancollins/vim-jst'
Bundle 'leshill/vim-json'

" python bundles
Bundle 'klen/python-mode'

" markdown
Bundle 'plasticboy/vim-markdown'

" general 
syntax on
filetype indent plugin on
" modelines (comments that set vim options on a per-file basis)
set title
set modeline
set modelines=3
set mouse=a                 " automatically enable mouse usage
scriptencoding utf-8
set encoding=utf-8
set hidden " allow buffer switching without saving
set switchbuf=useopen
set history=10000
set visualbell
set winwidth=79
set showtabline=2
set ruler                   " show the ruler
set showcmd                 " show partial commands in status line and
set backspace=indent,eol,start
set nu                          " Line numbers on
set showmatch                   " show matching brackets/parenthesis
set incsearch                   " find as you type search
set hlsearch                    " highlight search terms
set winminheight=0              " windows can be 0 line high
set ignorecase                  " case insensitive search
set smartcase                   " case sensitive when uc present
set wildmenu                    " show list instead of just completing
set wildmode=list:longest,full  " command <Tab> completion, list matches, then longest common part, then all.
set wildignore+=*/build/*,*.so,*.swp,*.zip,*/vendor/*,*/logs/*,*/cache/*,*/svn/*,*/.git/*
set scrolljump=5                " lines to scroll when cursor leaves screen
set scrolloff=5                 " minimum lines to keep above and below cursor
set nowrap                      " wrap long lines
set autoindent                  " indent at the same level of the previous line
set expandtab                   " tabs are spaces, not tabs
set shiftwidth=2                " use indents of 2 spaces
set tabstop=2                   " an indentation every four columns
set softtabstop=2               " let backspace delete indent
verbose set cursorline
set cmdheight=1
set shortmess=AIT
set laststatus=2

" vim swap disable
set nobackup
set nowritebackup
set noswapfile

" folding
set foldmethod=manual
set nofoldenable

" Insert only one space when joining lines that contain sentence-terminating
" punctuation like `.`.
set nojoinspaces

" If a file is changed outside of vim, automatically reload it without asking
set autoread

" fixes slowness on <Shift> + O
set timeout timeoutlen=5000 ttimeoutlen=100

" Prevent Vim from clobbering the scrollback buffer. See
" http://www.shallowsky.com/linux/noaltscreen.html
" set t_ti= t_te=

" general keybindings
let mapleader = ','
imap jj <Esc>

" windowing
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l

" tabs
nmap <leader>tt :tabn<CR>
nmap <leader>tp :tabp<CR>

" blocks
vnoremap < <gv
vnoremap > >gv

augroup vimrcEx
  autocmd!
  
  " reload .vimrc if we save it
  autocmd! bufwritepost .vimrc source %
  
  " Jump to last cursor position unless it's invalid or in an event handler
  autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g`\"" | endif

  autocmd BufEnter * cd %:p:h " used to change wd to curr file

  " fixes syntax for sass files sets them to use css syntax
  autocmd BufNewFile,BufRead *.scss set filetype=css
  autocmd BufNewFile,BufRead *.sass set filetype=css
  
  " same as above for handlebar files
  au BufNewFile,BufRead *.hbs set filetype=html

  " javascript, tries to run the current file in node
  au BufNewFile,BufRead *.js nmap <Leader>r :!clear & node %<CR>


  " python, special things for python files
  autocmd BufNewFile,BufRead *.py set textwidth=79
  autocmd BufNewFile,BufRead *.py set tabstop=4
  autocmd BufNewFile,BufRead *.py set softtabstop=4
  autocmd BufNewFile,BufRead *.py set shiftwidth=4
  autocmd BufNewFile,BufRead *.py set expandtab
  autocmd BufNewFile,BufRead *.py set shiftround
  autocmd BufNewFile,BufRead *.py set autoindent
augroup END

" ack
map <leader>k :Ack 

" nerdtree
map <C-e> :NERDTreeToggle<CR>:NERDTreeMirror<CR>
map <leader>e :NERDTreeFind<CR>
nmap <leader>nt :NERDTreeFind<CR>
map <F2> :NERDTreeToggle<CR>
let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']
let NERDTreeChDirMode=0
let NERDTreeQuitOnOpen=0
let NERDTreeMouseMode=2
let NERDTreeShowHidden=0
let NERDTreeKeepTreeInNewTab=1
let g:NERDTreeDirArrows=0 
let g:nerdtree_tabs_open_on_gui_startup=0

" syntastic
let g:syntastic_auto_jump = 0
let g:syntastic_check_on_open = 1
let g:syntastic_mode_map = { 'mode': 'active',
                           \ 'active_filetypes': [],
                           \ 'passive_filetypes': [] }

" python-mode
let g:pymode_folding=0

" vim-scratch 
nmap <leader>s :e ~/Copy/.__scratch__<CR>

" bufexplorer
nmap <leader>b :BufExplorer<CR>

" ctrlp
let g:ctrlp_working_path_mode = 2
nnoremap <silent> <D-t> :CtrlP<CR>
nnoremap <silent> <D-r> :CtrlPMRU<CR>
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\.git$\|\.hg$\|\.svn$\|cache\|vendor\|logs\|build\|node_modules',
    \ 'file': '\.swp$\|\.exe$\|\.so$\|\.dll$\|\.swo$\|\.lock$\|\.gitignore$\|\.project$' }

" tabular
nmap <leader>aa :Tabularize /=<CR>
vmap <leader>aa :Tabularize /=<CR>
nmap <leader>a= :Tabularize /=<CR>
vmap <leader>a= :Tabularize /=<CR>
nmap <leader>a: :Tabularize /:<CR>
vmap <leader>a: :Tabularize /:<CR>
nmap <leader>a, :Tabularize /,\zs<CR>
vmap <leader>a, :Tabularize /,\zs<CR>

" markdown 
let g:vim_markdown_folding_disabled=1

" colorscheme
set t_Co=256 " 256 colors
set background=dark
colorscheme desert

