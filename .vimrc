" Enable mouse support
set mouse=a

" Set tab size and enable line numbers
set tabstop=4
set number

" Keep 8 lines visible when scrolling
set scrolloff=8

" Set leader key to space
let mapleader = " "

" Enable incremental search
set incsearch

" Disable custom GUI cursor behavior (Vim doesn't support `guicursor`)
" Use Vim defaults here, no need to set

" Move selected visual block up and down
vnoremap <S-Down> :m '>+1<CR>gv=gv
vnoremap <S-Up> :m '<-2<CR>gv=gv

" Join lines and keep cursor position
nnoremap J mzJ`z

" Half-page jump with cursor centered
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

" Keep search terms centered
nnoremap n nzzzv
nnoremap N Nzzzv

" Better paste in visual mode
xnoremap <leader>p "_dP

" Copy to system clipboard
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y "+Y

" Disable swapfile and enable persistent undo
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile

" Use Ctrl+C to exit insert mode
inoremap <C-c> <Esc>

" Find and replace with word under cursor
nnoremap <leader>s :%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>

" Split screen shortcuts
nnoremap <leader>ss :split<CR>
nnoremap <leader>sv :vsplit<CR>

" Navigate between split screens
nnoremap <leader><Left> <C-w>h
nnoremap <leader><Down> <C-w>j
nnoremap <leader><Up> <C-w>k
nnoremap <leader><Right> <C-w>l

" Delete a word backwards
nnoremap dw vb_d
