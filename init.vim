source ~/.config/nvim/general/settings.vim
source ~/.config/nvim/general/cocSettings.vim
 
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
