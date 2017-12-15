set nocompatible              " be iMproved, required
filetype off                  " required


" set the runtime path to include Vundle and initialize
set rtp+=%USERPROFILE%/vimfiles/bundle/Vundle.vim
call vundle#begin('C:/Users/Philipp/vimfiles/bundle')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'davidhalter/jedi-vim'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


syntax on

filetype plugin on
filetype on

" > Graphical User Interface
set clipboard=unnamed
set background=dark

if has('gui_running')
  let g:solarized_termcolors=256
else
  let g:solarized_termcolors=16
endif
colorscheme solarized

set backspace=indent,eol,start
set guifont=Fixedsys:h11

set lines=30 columns=100

au InsertEnter * hi Normal ctermbg=234 guibg=#000000
au InsertLeave * hi Normal ctermbg=232 guibg=#1b1d1e

"set t_Co=256
set nocompatible
set modelines=0

" > Tab handling
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent

"code Folding
set foldmethod=indent

set encoding=utf-8
set scrolloff=3
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=longest,list,full
set visualbell
set cursorline
set cursorcolumn
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set number relativenumber
"
" Statusline color depending on Mode
" first, enable status line always
set laststatus=2
" now set it up to change the status line based on mode
if version >= 700
  au InsertEnter * hi StatusLine term=reverse ctermbg=5 gui=undercurl guisp=Magenta
  au InsertLeave * hi StatusLine term=reverse ctermfg=0 ctermbg=2 gui=bold,reverse
endif

"for filesearch
set path=.,,**
set wildmenu

set undofile
set undolevels=1000         " How many undos
set undoreload=10000        " number of lines to save for undo

"Window navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"YCM 
set encoding=utf-8
let g:ycm_python_binary_path = 'C:\Users\Philipp\Anaconda3\python3'
let g:ycm_global_ycm_extra_conf = 'C:\Users\Philipp\learnProjects'

"
"#################################################################
"LaTeX Suite Settings
"#################################################################
" > so vim opens .tex with latex-suite
let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat='pdf' "compiles Document into pdf
