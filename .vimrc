" http://vim.wikia.com/wiki/Synchronize_configuration_to_many_computers
" On Windows, also use '.vim' instead of 'vimfiles'; this makes synchronization
" across (heterogeneous) systems easier.
if has('win32') || has('win64')
  set runtimepath=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
endif



" vundle: as per : https://github.com/gmarik/Vundle.vim#quick-start
"
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/vimfiles/bundle/Vundle.vim
let path='~/vimfiles/bundle'
call vundle#begin(path)
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"   Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"   Plugin 'L9'
" Git plugin not hosted on GitHub
"   Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"   Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"    Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"    Plugin 'user/L9', {'name': 'newL9'}

" Added plugins for vundle. 
" After adding, in vim run the command ":PluginInstall"

" git plugin
Plugin 'tpope/vim-fugitive'
" Search (replaced by ctrlsf)
" Plugin 'mileszs/ack.vim'
Plugin 'dyng/ctrlsf.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree.git'
Plugin 'jlanzarotta/bufexplorer.git'
" status line
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Autocomplete
" Plugin 'ervandew/supertab'

Plugin 'derekwyatt/vim-scala'
Plugin 'pangloss/vim-javascript'
Plugin 'elzr/vim-json'
Plugin 'neovimhaskell/haskell-vim'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
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

" end of vundle

execute pathogen#infect()
syntax on
filetype plugin indent on

if has('gui_running')
	set guifont=Consolas:h11:cANSI
endif

" status line theme, lighten it please!
let g:airline_theme='zenburn'

" don't use the alt key for the gvim menu:
set winaltkeys=no
set backspace=indent,eol,start

set tabstop=4
set shiftwidth=4
set expandtab
set smartindent

" if a search/replace is all lowercase, then ignore case for the search/replace.
set ignorecase
set smartcase

" from https://github.com/thoughtbot/dotfiles/blob/master/vimrc
set nobackup
set nowritebackup
set noswapfile    " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287
set history=50
set ruler         " show the cursor position all the time
set showcmd       " display incomplete commands
" set incsearch     " do incremental searching
set laststatus=2  " Always display the status line
set autowrite     " Automatically :write before running commands
set wildmenu
set autoindent
set incsearch

colorscheme slate
cd c:\Code

" gvim specific settings:
set guioptions -=T      " remove the toolbar 
set guioptions -=m      " remove the menu 

" easier navigation between splits/tabs:
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" bufexplorer mappings, slightly modified form of
" http://vim.wikia.com/wiki/Easier_buffer_switching
" Buffers - explore/next/previous: Alt-F12, F12, Shift-F12.
nnoremap <silent> <F12> :BufExplorer<CR>
nnoremap <silent> <M-F12> :bn<CR>
nnoremap <silent> <S-F12> :bp<CR>
" MC special addition
nnoremap <silent> <M-j> :BufExplorer<CR>

" Special Mark Cheeseman additions:
" Pretty print json in the current buffer
nnoremap <Esc>f :%!python -m json.tool<CR>



" Other settings:

set runtimepath^=~/vimfiles/bundle/ctrlp.vim

" ctrlp settings
let g:ctrlp_max_files = 0
let g:ctrlp_custom_ignore = {'dir':'\.git$\|node_modules$'}

" ctrlsf mappings
nmap     <M-s>f <Plug>CtrlSFPrompt
vmap     <M-s>F <Plug>CtrlSFVwordPath
vmap     <M-s>F <Plug>CtrlSFVwordExec
nmap     <M-s>n <Plug>CtrlSFCwordPath
nmap     <M-s>p <Plug>CtrlSFPwordPath
nnoremap <M-s>o :CtrlSFOpen<CR>
nnoremap <M-s>t :CtrlSFToggle<CR>
inoremap <M-s>t <Esc>:CtrlSFToggle<CR>
nmap     <M-s>l <Plug>CtrlSFQuickfixPrompt
vmap     <M-s>l <Plug>CtrlSFQuickfixVwordPath
vmap     <M-s>L <Plug>CtrlSFQuickfixVwordExec



let g:ctrlsf_position = 'right'

" y to system register
set clipboard=unnamed

" NERDTree defaults
let g:NERDTreeShowHidden=1

" file formats
" set encoding=utf-8      " The encoding displayed.
" set fileencoding=utf-8  " The encoding written to file.

" autowrite on focus lost:
au FocusLost * :wa
set autowriteall     " Automatically :write before running commands

" have highlighted search
" use esc-h to remove a single search highlight
set hlsearch
nnoremap <Esc>h :nohlsearch<CR>

" for vim-multiple-cursors
set selection=inclusive

