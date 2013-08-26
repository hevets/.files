" hevets vimrc 

" Vundle requirements
" set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" vundle !!!
Bundle 'gmarik/vundle'

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
Bundle 'Lokaltog/vim-powerline'
Bundle 'Lokaltog/vim-easymotion'

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
set modeline
set mouse=a                 " automatically enable mouse usage
scriptencoding utf-8
set encoding=utf-8
set hidden " allow buffer switching without saving
set visualbell
" set cc=80
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
set shiftwidth=2                " use indents of 2 spaces
set expandtab                   " tabs are spaces, not tabs
set tabstop=2                   " an indentation every four columns
set softtabstop=2               " let backspace delete indent
verbose set cursorline
set shortmess=AIT

" vim swap disable
set nobackup
set nowritebackup
set noswapfile

" fixes slowness on <Shift> + O
set timeout timeoutlen=5000 ttimeoutlen=100

" files
autocmd! bufwritepost .vimrc source %
autocmd BufEnter * cd %:p:h " used to change wd to curr file
autocmd BufNewFile,BufRead *.scss set filetype=css
autocmd BufNewFile,BufRead *.sass set filetype=css
au BufNewFile,BufRead *.hbs set filetype=html

" javascript 
au BufNewFile,BufRead *.js nmap <Leader>r :!clear & node %<CR>

" python
autocmd BufNewFile,BufRead *.py set textwidth=79
autocmd BufNewFile,BufRead *.py set tabstop=4
autocmd BufNewFile,BufRead *.py set softtabstop=4
autocmd BufNewFile,BufRead *.py set shiftwidth=4
autocmd BufNewFile,BufRead *.py set expandtab
autocmd BufNewFile,BufRead *.py set shiftround
autocmd BufNewFile,BufRead *.py set autoindent

" keybindings
let mapleader = ','
imap jj <Esc>
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l
nmap <leader>tt :tabn<CR>
nmap <leader>tp :tabp<CR>
vnoremap < <gv
vnoremap > >gv

" plugin keybindings
map <F2> :NERDTreeToggle<CR>


" nerdtree
map <C-e> :NERDTreeToggle<CR>:NERDTreeMirror<CR>
map <leader>e :NERDTreeFind<CR>
nmap <leader>nt :NERDTreeFind<CR>

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
nmap <Leader>aa :Tabularize /=<CR>
vmap <Leader>aa :Tabularize /=<CR>
nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:<CR>
vmap <Leader>a: :Tabularize /:<CR>
nmap <Leader>a, :Tabularize /,\zs<CR>
vmap <Leader>a, :Tabularize /,\zs<CR>

" markdown 
let g:vim_markdown_folding_disabled=1

" powerline
let g:Powerline_symbols = 'fancy'

" colorscheme
colorscheme desert
set background=dark

