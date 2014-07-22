set nocompatible              " be iMproved, required
filetype off                  " required
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set expandtab
set encoding=utf-8
set nu
set paste


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'





Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}


Plugin 'https://github.com/myhere/vim-nodejs-complete.git'
Plugin 'https://github.com/Valloric/YouCompleteMe.git'
Plugin 'https://github.com/scrooloose/syntastic.git'
Plugin 'https://github.com/scrooloose/nerdtree.git'
Plugin 'https://github.com/altercation/vim-colors-solarized.git'
Plugin 'https://github.com/Lokaltog/vim-powerline.git'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" node js config
let g:nodejs_complete_config = {
\   'js_compl_fn': 'jscomplete#CompleteJS',
\   'max_node_compl_len': 15
\}




"theme
syntax enable
set background=dark
"colorscheme solarized
colorscheme darkblue

map <C-t> :NERDTreeToggle<CR>
autocmd vimenter * NERDTreeToggle
