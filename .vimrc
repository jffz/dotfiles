execute pathogen#infect()
filetype plugin indent on
syn on
set nu
  \ relativenumber
  \ cursorline
  \ cursorcolumn
  \ hlsearch
  \ scrolloff=3
  \ shiftwidth=2
colorscheme molokai
hi Normal guibg=NONE ctermbg=NONE
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
" Set space as Leaderkey
let mapleader="\<Space>"
" Move between windows with hjkl keys
nnoremap <Leader>h   <C-W><Left>
nnoremap <Leader>l   <C-W><Right>
nnoremap <Leader>k   <C-W><Up>
nnoremap <Leader>j   <C-W><Down>
nnoremap <Leader>w   <C-W>
nnoremap <Leader>m   <C-W>_<C-W>|
"" vim-easy-align
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
" vim-airline
let g:airline_powerline_fonts = 1
let g:airline_theme = 'ayu_dark'
