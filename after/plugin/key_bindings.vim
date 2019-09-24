" alternative insert mode toggles
imap jk <Esc>
imap kj <Esc>

" :: ctrl-s --- save
nnoremap <C-s> :w<CR>

" :: ctrl-p --- open file via fzf
if exists(':FZF')
  nnoremap <C-p> :FZF!<cr>
endif

" :: better movement in wrapped text
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

" :: easier buffer switching
nnoremap <C-[> :bp<CR>
nnoremap <C-]> :bn<CR>

" :: easier buffer movement
nnoremap <C-J> <C-W><Left>
nnoremap <C-K> <C-W><Right>
nnoremap <C-L> <C-W><Right>
nnoremap <C-H> <C-W><Left>

" :: close current buffer
if exists (':Bdelete')
  nnoremap <C-q> :Bdelete<CR>
else
  nnoremap <C-q> :bdelete<CR>
endif

" :: close all buffers except current one
if exists(':Bonly')
  nnoremap <leader>bb :Bonly<CR>
endif

" :: kill search highlights
nmap <leader>n :noh<CR>

" :: replace vim search with easymotion
map / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

" :: use easymotion for quick bidirectional search
map s <Plug>(easymotion-s)

" :: use easymotion's (saner) prev/next search result behavior
map n <Plug>(easymotion-next)
map N <Plug>(easymotion-prev)

" :: toggle comments with vim-commentary
nmap <leader>\ gcc
vmap <leader>\ gc

" :: toggle zen mode
map <leader>,, :Goyo<cr>

" :: toggle zen focus
map <leader>.. :Limelight!!<cr>

" -----------------------------------------------------------------------------

" :: tab --- autocompletion
inoremap <silent><expr> <TAB>
  \ pumvisible() ? "\<C-n>" :
  \ <SID>check_back_space() ? "\<TAB>" :
  \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1] =~# '\s'
endfunction

" :: ctrl-space --- trigger completion
inoremap <silent><expr> <c-space> coc#refresh()

" :: CR --- commit completion
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" ------------------------------------------------------------------------------
" :: config files QoL keymaps ---
" 
" (SPC-f-e-d) config file
nnoremap <leader>fed :cd ~/.vim<CR>:e ~/.vim/init.vim<CR>

" (SPC-f-e-k) keymaps
nnoremap <leader>fek :cd ~/.vim<CR>:e ~/.vim/after/plugin/key_bindings.vim<CR>

" (SPC-f-e-c) CoC keymaps
nnoremap <leader>fec :cd ~/.vim<CR>:e ~/.vim/after/plugin/coc.vim<CR>

" (SPC-f-e-o) options file
nnoremap <leader>feo :cd ~/.vim<CR>:e ~/.vim/after/plugin/options.vim<CR>

" (SPC-f-e-t) theme file
nnoremap <leader>fet :cd ~/.vim<CR>:e ~/.vim/after/plugin/theme.vim<CR>

