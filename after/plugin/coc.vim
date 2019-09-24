inoremap <silent><expr> <c-space> coc#refresh()

" (gd) - go to definition
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)

" (gi) - go to implementation
nmap <silent> gi <Plug>(coc-implementation)

" (gr) - find references
nmap <silent> gr <Plug>(coc-references)

" (gh) - get hint on whatever's under the cursor
nnoremap <silent> K :call <SID>show_documentation()<CR>
nnoremap <silent> gh :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" :: highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

nnoremap <silent> <leader>co :<C-u>CocList outline<cr>
nnoremap <silent> <leader>cs :<C-u> CocList -I symbols<cr>

" (cl) - list errors
nnoremap <silent> <leader>cl :<C-u>CocList locationlist<cr>

" (cc) - list commands available in tsserver
nnoremap <silent> <leader>cc :<C-u>CocList commands<cr>

" (cR) - restart when tsserver gets wonky
nnoremap <silent> <leader>cR :<C-u>CocRestart<CR>

" (cx) - manage extensions
nnoremap <silent> <leader>cx :<C-u>CocList extensions<cr>

" (cr) - rename the current word in the cursor
nmap <leader>cr <Plug>(coc-rename)

nmap <leader>cf <Plug>(coc-format-selected)
vmap <leader>cf <Plug>(coc-format-selected)

" (ca) - run code actions
nmap <leader>ca <Plug>(coc-codeaction-selected)
vmap <leader>ca <Plug>(coc-codeaction-selected)

