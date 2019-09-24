if has('gui_running')
  set transparency=0
  set guioptions+=gme
  set antialias
  color ir_black+
else
  set termguicolors
  let ayucolor='mirage'
  colorscheme ayu
endif
