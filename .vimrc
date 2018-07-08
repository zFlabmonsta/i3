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
"************************************************************
"Syntax
Plugin 'dkarter/bullets.vim'            " bullets in vim
Plugin 'tpope/vim-git'
Plugin 'vimwiki/vimwiki'                " vim wiki
Plugin 'vim-syntastic/syntastic'        " syntastics
"************************************************************
"Accessibility
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tomtom/tcomment_vim'			" comment awareness
Plugin 'easymotion/vim-easymotion'		" jumping tool
Plugin 'scrooloose/nerdTree'			" directory tab on vim
"*************************************************************
"Git
Plugin 'airblade/vim-gitgutter'			" shows modified git files
Plugin 'tpope/vim-fugitive'
"*************************************************************
"Theme
Plugin 'dracula/vim'                    " dracula theme
Plugin 'itchyny/lightline.vim' 			" Modified status bar
"*************************************************************
"AutoCompleter
"Plugin 'rdnetto/YCM-Generator'
"Plugin 'Valloric/YouCompleteMe'
"let g:ycm_global_ycm_extra_conf = '$HOME/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
"*************************************************************
"Auto Complete Popup
"Plugin 'vim-scripts/AutoComplPop'
"*************************************************************
"Snippet

" Track the engine.
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<tab>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

"*************************************************************
" All of your Plugins must be added before the following line
call vundle#end()            " required

"vim-plug Preference
call plug#begin('~/.vim/autoload')
"*************************************************************
"Deoplete
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#num_processes = 1
let g:deoplete#enable_at_startup = 1
"*************************************************************
call plug#end()

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
"set smartindent

" Backspace problem
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

