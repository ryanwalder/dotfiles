" Includes

source ~/.config/nvim/plugins.vim
source ~/.config/nvim/mappings.vim

" Black
autocmd BufWritePre *.py execute ':Black'
let g:black_linelength = 80


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
" Save your backups to a less annoying place than the current directory.
if isdirectory($HOME . '/.cache/nvim/backup') == 0
  :silent !mkdir -p ~/.cache/nvim/backup >/dev/null 2>&1
endif
set backupdir=~/.cache/nvim/backup
set backup

" Save your swp files to a less annoying place than the current directory.
" If you have .vim-swap in the current directory, it'll use that.
" Otherwise it saves it to ~/.vim/swap, ~/tmp or .
if isdirectory($HOME . '/.cache/nvim/swap') == 0
  :silent !mkdir -p ~/.cache/nvim/swap >/dev/null 2>&1
endif
set directory=~/.cache/nvim/swap

" viminfo stores the the state of your previous editing session
if has('nvim')
  set shada+=n~/.cache/nvim/shada
else
  set viminfo=n~/.cache/nvim/viminfo
endif

" This is only present in 7.3+ {{{3
if exists('+undofile')
  " undofile - This allows you to use undos after exiting and restarting
  " This, like swap and backups, uses .vim-undo first, then ~/.vim/undo
  " :help undo-persistence
  if isdirectory($HOME . '/.cache/nvim/undo') == 0
    :silent !mkdir -p ~/.cache/nvim/undo > /dev/null 2>&1
  endif
  set undodir=~/.cache/nvim/undo//
  set undofile
endif

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
