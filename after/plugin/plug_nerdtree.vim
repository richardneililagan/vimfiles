" :: close vim if nerdtree is the only window open
autocmd bufenter * if (winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree()) | q | endif

" :: change nerdtree default node markers
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'

" :: show hidden files
let g:NERDTreeShowHidden = 1
