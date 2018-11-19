set incsearch
set ts=3
:set incsearch
:set hlsearch
:set nocompatible

:map! <F2> <C-]>
:map <F2> g<C-]>
:map f :call ShowFuncName()<Cr>
:imap <Up> <Esc><Up>
:imap <Down> <Esc><Down>
:imap <Left> <Esc><Left>
:imap <Right> <Esc><Right>
:set filetype=on
:set tabstop=8
:set softtabstop=4
:set expandtab
:set shiftwidth=4
:let g:tlist_vhdl_settings='vhdl;d:package declarations;b:package bodies;e:entities;a:architecture specifications;t:type declarations;p:processes;f:functions;r:procedures'


" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
:set ruler

fun! ShowFuncName()
  let lnum = line(".")
  let col = col(".")
  echohl ModeMsg
  echo getline(search("^[^ \t#/]\\{2}.*[^:]\s*$", 'bW'))
  echohl None
  call search("\\%" . lnum . "l" . "\\%" . col . "c")
endfun

:autocmd FileType make set noexpandtab
:autocmd FileType make set softtabstop=0

:map <F5> A<Cr>/**@file<Cr>    \brief<Cr>    \details<Cr>*/<Esc>
if( &filetype=="perl")
endif
:autocmd FileType perl map <F5> A<Cr>## @file<Cr>##    \brief<Cr>##    \details<Cr><Esc>
" :set tags=$SRCROOT/tags
:set tags=/home/simson/development/rpi_kernel/linux/tags
:set ts=3
:set sw=3
:set softtabstop=3
