" disable ex mode
nnoremap Q <Nop>

""""""" binds
let mapleader = "\<Space>"
set clipboard=unnamedplus

" pasting
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
map <F1> :set nu!<CR>:set relativenumber!<CR>

" whitespace
map <F7> mzgg=G`z<CR>
map <F8> :StripWhitespace<CR>
map <F12> :set spell!<CR>
inoremap <S-Tab> <C-V><Tab>

" insert date
nmap <Leader>d a<C-R>=strftime("%Y-%m-%d")<CR><Esc>
" sort
vnoremap <Leader>s :sort<CR>
vnoremap <Leader>i !sort -n -t . -k 1,1 -k 2,2 -k 3,3 -k 4,4<CR>

" easier code indenting
vnoremap < <gv
vnoremap > >gv

" generate 128char string
nnoremap <F6> :r! pwgen 128 -s -1<CR>kJ

" generate sshkeypair for salt pillar
nnoremap <F5> :r! ssh-keygen -t rsa -f /tmp/vimkey -N '' >/dev/null<Enter>i<Tab>ssh_rsa_priv:<Space>\|<CR><ESC>:r /tmp/vimkey<CR>kdd<C-v>GI<Tab><Tab><ESC>Go<Tab>ssh_key_pub:<Space>\|<CR><ESC>:r /tmp/vimkey.pub<CR>kddi<Tab><Tab><ESC>:r! rm -rf /tmp/vimkey*<CR>
