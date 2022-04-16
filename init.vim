" adding the plugin manager 
" this code was executed only for the first time 
 let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin()
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'} 
Plug 'morhetz/gruvbox'
" this is the list of plug used to uml , the first was to highlight the syntaxe 
Plug 'aklt/plantuml-syntax'
" this the take a look at your code how it look like
Plug 'weirongxu/plantuml-previewer.vim'
" this plugin allow the vim to open browser :) have fun
Plug 'tyru/open-browser.vim'

call plug#end()

" add some basic configuration for coc plugin
set cmdheight=2
set updatetime=300
set shortmess+=c
" using tab button to navigate between coc recommandation 
inoremap <silent><expr><TAB>
	\ pumvisible() ? "\<C-n>" :
	\<SID>check_back_space() ? "\<TAB>" :
	\coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort  
 let col = col('.') - 1
 return !col || getline('.')[col-1] =~# '\s'
endfunction
" Use <c-space> to trigger compilation
if has('nvim')
inoremap <silent><expr> <c-space> coc#refresh()
else
inoremap <silent><expr> <c-@> coc#refresh()
endif

let g:mapleader = "\<Space>"

syntax enable
set number  
set hidden
" remove the ligne bellow if you want to use arrow insted of j k l m
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
" switch between selected page
" C is Ctrl
nnoremap <C-J> :bprev<CR>
nnoremap <C-K> :bnext<CR>

" to display the list of file press space button
nnoremap <space> :NERDTreeToggle<CR>

set clipboard+=unnamedplus
autocmd vimenter * ++nested colorscheme gruvbox
