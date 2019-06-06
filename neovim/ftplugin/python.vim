let g:pymode_options = 0
let g:pymode_virtualenv = 1
let g:pymode_options_colorcolumn = 0
let g:pymode_indent = 0
let g:pymode_motion = 1
let g:pymode_lint = 1
let g:pymode_lint_on_write = 0
let g:pymode_lint_unmodified = 0

nnoremap <Leader>l :PymodeLint<CR>


setlocal complete+=t
setlocal formatoptions-=t
setlocal commentstring=#%s
setlocal define=^\s*\\(def\\\\|class\\)
