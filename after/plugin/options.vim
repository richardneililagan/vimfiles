set encoding=utf-8

syntax on
filetype plugin indent on

" :: enable 256-colors in the terminal
if !has('gui_running') | set t_Co=256 | endif

" :: catch-all ignores
set wig+=vendor,log,logs
set wig+=node_modules

" :: no bells
set noerrorbells
set novisualbell

" :: if hidden is not set, TextEdit might fail
set hidden

" :: some servers have issues with backup files (see: https://github.com/neoclide/coc.nvim/issues/649)
set nobackup
set nowritebackup

" :: better display for messages
set cmdheight=2

" :: bad ux for diagnostic messages when it's default 4000
set updatetime=300

" :: don't give |ins-completion-menu| messages
set shortmess+=c

" :: always show signcolumns
set signcolumn=yes

" :: read changes automatically if file is modified outside vim
set autoread

" :: use OS clipboard
set clipboard=unnamed

" :: because 2 spaces is what god intended for everyone
set tabstop=2 shiftwidth=2 expandtab

" :: wrap text
set wrap

" :: use relative line numbers
set number relativenumber

" :: set bottom sink height
set ch=2

" :: don't jump to the start of the line when scrolling
set nostartofline

" :: increase timeout for key motions
set timeout timeoutlen=200 ttimeoutlen=10

" :: minimal status
set laststatus=0

" :: more natural split panes
set splitbelow
set splitright

" :: highlight current line
set cursorline

" ----------------------------------------------

" :: maybe some perf improvements
if has("mac")
  set foldlevel=0
  set foldmethod=manual
endif
