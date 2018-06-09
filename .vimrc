set nocompatible              " be iMproved, required
filetype plugin on            " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Vundle Preference
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'itchyny/lightline.vim' 			" Modified status bar
Plugin 'tomtom/tcomment_vim'			" comment awareness
Plugin 'airblade/vim-gitgutter'			" shows modified git files
Plugin 'easymotion/vim-easymotion'		" jumping tool
Plugin 'scrooloose/nerdTree'			" directory tab on vim
Plugin 'dkarter/bullets.vim'            " bullets in vim
Plugin 'vim-syntastic/syntastic'        " syntastics
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-fugitive'
Plugin 'christoomey/vim-conflicted'
Plugin 'vimwiki/vimwiki'                " vim wiki
Plugin 'dracula/vim'                    " dracula theme
Plugin 'rdnetto/YCM-Generator'
Plugin 'Valloric/YouCompleteMe'
let g:ycm_global_ycm_extra_conf = '$HOME/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

" All of your Plugins must be added before the following line
call vundle#end()            " required
"filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Dracula theme
color dracula

" **BASIC SETTINGS** 
syntax on 
set number
set ruler
set hidden
set incsearch
set laststatus=2                           "display status bar
set breakindent                            "wrapped line repeast indent
set emoji                                  "emoji characters are considered full width
set termguicolors                          "use GUI colors for the terminal

" Indentation
set expandtab
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent

" backspace problem
set backspace=2

"These are stock theme options
"colorscheme pablo 
"blue.vim
"darkblue.vim
"default.vim
"delek.vim
"desert.vim
"elflord.vim
"evening.vim
"koehler.vim

"NERDTree mapping
map <C-n> :NERDTreeToggle<CR>

"clipboard
set clipboard=unnamed
