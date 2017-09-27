" vim:foldmethod=marker:foldlevel=0
" zo + zc to open / close folds


" PLUG {{{
call plug#begin('~/.config/nvim/plugged')

function! DoRemote(arg)
  UpdateRemotePlugins
endfunction

call plug#end()
" }}}

" LOOK AND SYNTAX HILIGHTING {{{
syntax on
set background=dark
colorscheme blue

" }}}

" KEYMAPPINGS {{{
" Leader key
let mapleader = ","

" arrow keys disable
nnoremap <right> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <up> <nop>

vnoremap <right> <nop>
vnoremap <down> <nop>
vnoremap <left> <nop>
vnoremap <up> <nop>

" panes
nnoremap <leader>d :vsp<cr>
set splitright
nnoremap <leader>s :split<cr>
set splitbelow
" map <C-w>w (switch buffer focus) to something nicer
nnoremap <leader>w <C-w>w

" tabs
nnoremap <leader>] :tabn<cr>
nnoremap <leader>[ :tabp<cr>
nnoremap <leader>T :tabe<cr>

" Insert date
nnoremap <leader>fd "=strftime("%m-%d-%y")<CR>p

" Edit vimrc
nnoremap <leader>ev :edit $MYVIMRC<cr>
nnoremap <leader>evs :source $MYVIMRC<cr>

" Toggle paste with F2
set pastetoggle=<F2>

" }}}

" BRACE COMPLETION {{{
set showmatch
" inoremap {      {}<Left>
" inoremap {<CR>  {<CR>}<Esc>O
" inoremap <expr> }  strpart(getline('.'), col('.')-1, 1) == "}" ? "\<Right>" : "}"
" inoremap {}     {}
"
" inoremap (      ()<Left>
" inoremap (<CR>  (<CR>)<Esc>O
" inoremap <expr> )  strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"
" inoremap ()     ()
"
" inoremap [      []<Left>
" inoremap [<CR>  [<CR>]<Esc>O
" inoremap <expr> ]  strpart(getline('.'), col('.')-1, 1) == "]" ? "\<Right>" : "]"
" inoremap []     []
" }}}

" GENERAL/TOGGLEABLE SETTINGS {{{
" horizontal split splits below
set splitbelow

" indentation
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
filetype indent off
au BufNewFile,BufRead *.py
  \ setlocal tabstop=2
  \ shiftwidth=2
  \ softtabstop=2
  \ autoindent
  \ expandtab

" line numbers
set number
set relativenumber

" show title
set title

" mouse
set mouse-=a

" utf-8 ftw
" nvim sets utf8 by default, wrap in if because prevents reloading vimrc

" Ignore case unless use a capital in search (smartcase needs ignore set)
set ignorecase
set smartcase


" }}}
