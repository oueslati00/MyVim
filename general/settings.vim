let g:mapleader = "\<Space>"

syntax enable
set number  
set hidden
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
nnoremap <C-J> :bprev<CR>
nnoremap <C-K> :bnext<CR>
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <space> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
set clipboard+=unnamedplus
autocmd vimenter * ++nested colorscheme gruvbox
