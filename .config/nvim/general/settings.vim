" set leader key
let g:mapleader = " "

syntax enable                           " Enables syntax highlighing
set encoding=utf-8                      " The encoding displayed
set fileencoding=utf-8                  " The encoding written to file
set noerrorbells                        " remove sound on errors
set tabstop=2                           " Insert 2 spaces for a tab
set shiftwidth=2                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set nowrap                              " Display long lines as just one line
set number relativenumber               " Line numbers and make them relative to the current line
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set nobackup                            " This is recommended by coc
set noswapfile                          " Do not create vim.swapfile on projects
set undofile                            " Save undos
set undodir=$HOME/.config/nvim/undodir  " Undo files directory
set incsearch
set nowritebackup                       " This is recommended by coc
set updatetime=300                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set formatoptions-=cro                  " Stop newline continution of comments
set clipboard=unnamedplus               " Copy paste between vim and everything else
" set mouse=a                             " Enable your mouse
" set autochdir                           " Your working directory will always be the same as your working directory

au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vim alternatively you can run :source $MYVIMRC

" You can't stop me
cmap w!! w !sudo tee %
