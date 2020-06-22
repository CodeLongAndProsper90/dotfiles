set autoindent
syntax on
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Add plugins here
Plugin 'jiangmiao/auto-pairs'
Plugin 'preservim/nerdtree'
Plugin 'junegunn/vim-easy-align'

"""""""""""""""""""""""""""""""""""""""""""""
Plugin 'arcticicestudio/nord-vim'
Plugin 'sjl/badwolf'
Plugin 'chriskempson/base16-vim'
Plugin 'romainl/Apprentice'
"""""""""""""""""""""""""""""""""""""""""""""
Plugin 'terryma/vim-multiple-cursors'
Plugin 'preservim/nerdcommenter'
Plugin 'ajh17/VimCompletesMe'
Plugin 'vim-airline/vim-airline'
Plugin 'dart-lang/dart-vim-plugin'
Plugin 'google/vim-maktaba'
Plugin 'google/vim-codefmt'
" Also add Glaive, which is used to configure codefmt's maktaba flags. See
" `:help :Glaive` for usage.
Plugin 'google/vim-glaive'
Plugin 'vim-syntastic/syntastic'
Plugin 'CodeLongAndProsper90/nightshade-vim'
call vundle#end()
filetype plugin indent on
set expandtab tabstop=2 softtabstop=2 shiftwidth=2 
let mapleader = ","
autocmd VimEnter * echo "Beam me up, Scotty!"
call maktaba#plugin#Detect()
autocmd  VimEnter * echom 'Set ColorScheme to Base16. There is also "badwolf", and"nord"!'
"colorscheme base16-default-dark
colo nightshade
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
colo badwolf
augroup d
  autocmd!
  autocmd BufNewFile *.d r ~/.vim/defaults/d
  nnoremap <F5> :w<CR>
  nnoremap <F6> :!xterm -hold -e "rdmd %" &<CR><CR>
augroup END

