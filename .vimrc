set nocompatible              " be iMproved, required
set background=dark
filetype off                  " required <<========== We can turn it on later
set nu
set relativenumber
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

" Spell checking, the exclamation mark after spell turns on the toggle mode!
map <F6> :setlocal spell! spelllang=en_us<CR>
map <F7> :setlocal spell! spelllang=de<CR>

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Plugin 'tpope/vim-vinegar'
Plugin 'scrooloose/nerdtree'
Plugin 'christoomey/vim-tmux-navigator'
" <============================================>
" Specify the plugins you want to install here.
" We'll come on that later
" <============================================>
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" Put the rest of your .vimrc file here


" <=============Custom Key Mappings============>

" Shortcut for opening NERDTree
map <C-n> :NERDTreeToggle<CR>

" Easier split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Custom Maps for tmux navigation
let g:tmux_navigator_no_mappings = 1

nnoremap <silent> {c-h} :TmuxNavigateLeft<cr>
nnoremap <silent> {c-j} :TmuxNavigateDown<cr>
nnoremap <silent> {c-k} :TmuxNavigateUp<cr>
nnoremap <silent> {c-l} :TmuxNavigateRight<cr>
nnoremap <silent> {Previous-Mapping} :TmuxNavigatePrevious<cr>
let g:tmux_navigator_disable_when_zoomed = 1
