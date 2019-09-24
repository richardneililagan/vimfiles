set nocompatible

let g:mapleader=' '

call plug#begin('~/.vim/vendor')

" :: plugins ---

if !has('nvim') && !exists('g:gui_oni') | Plug 'tpope/vim-sensible' | endif
Plug 'rstacruz/vim-opinion'

Plug 'junegunn/fzf', { 'dir' : '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'       " :: file picker

Plug 'w0rp/ale'               " :: syntax error checking
Plug 'tpope/vim-sleuth'       " :: detect spaces or tabs
Plug 'tpope/vim-commentary'   " :: commenting QoL
Plug 'tpope/vim-surround'     " :: wrap text with stuff
Plug 'tpope/vim-endwise'      " :: automatically add ending / closing syntax
Plug 'sheerun/vim-polyglot'   " :: automatic language support
Plug 'junegunn/goyo.vim'      " :: zen
Plug 'junegunn/limelight.vim' " :: zen focus
Plug 'schickling/vim-bufonly' " :: delete all buffers except current one
Plug 'moll/vim-bbye'          " :: close buffers conveniently
Plug 'easymotion/vim-easymotion' " :: easier search
Plug 'mhinz/vim-signify'      " :: diffs
Plug 'mhinz/vim-startify'     " :: start screen
Plug 'scrooloose/nerdtree'    " :: file browser

Plug 'ayu-theme/ayu-vim'      " :: theme
Plug 'flazz/vim-colorschemes' 

" :: CoC plugins

Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install() }}
Plug 'neoclide/coc-snippets', {'do': 'yarn install --frozen-lockfile' }
Plug 'neoclide/coc-lists', {'do': 'yarn install --frozen-lockfile' }
Plug 'neoclide/coc-highlight', {'do': 'yarn install --frozen-lockfile' }

Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile' }           " :: Javascript, Typescript
Plug 'neoclide/coc-css', {'do': 'yarn install --frozen-lockfile' }                " :: CSS, SCSS, Less
Plug 'neoclide/coc-html', {'do': 'yarn install --frozen-lockfile' }               " :: HTML, handlerbars, razor
Plug 'neoclide/coc-json', {'do': 'yarn install --frozen-lockfile' }               " :: JSON
Plug 'neoclide/coc-yaml', {'do': 'yarn install --frozen-lockfile' }               " :: YAML
Plug 'neoclide/coc-python', {'do': 'yarn install --frozen-lockfile' }             " :: Python
Plug 'neoclide/coc-emmet', {'do': 'yarn install --frozen-lockfile' }              " :: Emmet
Plug 'amiralies/coc-elixir', {'do': 'yarn install --frozen-lockfile' }            " :: Elixir
Plug 'coc-extensions/coc-omnisharp', {'do': 'yarn install --frozen-lockfile' }    " :: C#, VB

Plug 'neoclide/coc-prettier', {'do': 'yarn install --frozen-lockfile' }           " :: prettier
Plug 'neoclide/coc-eslint', {'do': 'yarn install --frozen-lockfile' }             " :: eslint
Plug 'neoclide/coc-tslint', {'do': 'yarn install --frozen-lockfile' }             " :: tslint

" :: /plugins --

call plug#end()
