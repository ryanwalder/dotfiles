" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif
call plug#begin('~/.config/nvim/plugged')
  Plug 'https://github.com/godlygeek/tabular.git'
  Plug 'https://github.com/tpope/vim-fugitive.git'
  Plug 'https://github.com/tpope/vim-speeddating.git'
  Plug 'https://github.com/bling/vim-airline.git'
  Plug 'https://github.com/saltstack/salt-vim.git'
  Plug 'https://github.com/rodjek/vim-puppet.git'
  Plug 'https://github.com/ntpeters/vim-better-whitespace.git'
  Plug 'https://github.com/Glench/Vim-Jinja2-Syntax.git'
  Plug 'https://github.com/ekalinin/Dockerfile.vim.git'
  Plug 'https://github.com/plasticboy/vim-markdown.git'
  Plug 'https://github.com/markcornick/vim-terraform.git'
  Plug 'https://github.com/martinda/Jenkinsfile-vim-syntax'
  Plug 'https://github.com/iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install' }
call plug#end()
