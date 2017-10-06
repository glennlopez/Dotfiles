set nocompatible              " be iMproved, required
filetype off                  " required
syntax on

set number
set incsearch
set hlsearch
set laststatus=2

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"PLUGINS
Plugin 'VundleVim/Vundle.vim'
Plugin 'tomasr/molokai'

Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'bling/vim-airline'
Plugin 'scrooloose/syntastic'                   "sytax checker
Plugin 'mhinz/vim-signify'
Plugin 'motemen/git-vim'

autocmd VimEnter * let g:gitgutter_enabled = 1

"All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


set runtimepath+=~/.vim_runtime

let g:airline_powerline_fonts = 1
let g:gitgutter_enabled = 1

"AUTO COMMAND AT STARTUP
autocmd vimenter * GitGutterEnable

"SOURCES
source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

"LOAD DEFAULT THEME
:colo gruvbox

try
source ~/.vim_runtime/my_configs.vim
catch
endtry
