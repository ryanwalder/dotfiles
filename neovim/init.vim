" Includes

source ~/.config/nvim/plugins.vim
source ~/.config/nvim/mappings.vim
autocmd FileType *.py :source ~/.config/nvim/python-mode.vim


""" Spelling
hi clear SpellBad
hi SpellBad cterm=underline ctermfg=red

""""""" defaults
"" disable cursor changing in nvim
set guicursor=
"" colours
set nohlsearch
syntax on
set t_Co=256
set background=light
highlight Comment ctermfg=blue
highlight Search ctermfg=256 ctermfg=0

set nocompatible
set backspace=2
set showmode
set nrformats-=octal
filetype plugin indent on
set nofoldenable
" slow as shit highlighting on new
set regexpengine=1
set mouse=

""""""" dirs
set directory=~/.cache/nvim/swap//
set backupdir=~/.cache/nvim/tmp//
set undodir=~/.cache/nvim/undo//

""""""" tabs and indents
set expandtab
set tabstop=4
set shiftwidth=4

" tabs and indents per file type
autocmd Filetype sls setlocal ts=2 sts=2 sw=2
autocmd Filetype bash setlocal ts=2 sts=2 sw=2
autocmd Filetype yaml setlocal ts=2 sts=2 sw=2
autocmd Filetype yml setlocal ts=2 sts=2 sw=2
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype Dockerfile setlocal ts=4 sts=4 sw=4
autocmd Filetype jinja syntax on

"" markdown-preview
let g:mkdp_auto_start = 0
let g:mkdp_command_for_global = 1
let g:mkdp_auto_close = 1
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle'
    \ }

nmap <F10> :MarkdownPreview<CR>

" airline
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
set laststatus=2
let g:airline_powerline_fonts = 0

" vim-json
let g:vim_json_syntax_conceal = 0
