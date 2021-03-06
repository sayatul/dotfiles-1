set nocompatible              " be iMproved, required
filetype off                  " required


" -----------------------------------------------------------------------------
" configure Plugins and vundle
" -----------------------------------------------------------------------------
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')syntax on
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-syntastic/syntastic'
Plugin 'Yggdroot/indentLine'
Plugin 'w0rp/ale'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'davidhalter/jedi-vim'
Plugin 'kristijanhusak/vim-hybrid-material'
Plugin 'itchyny/lightline.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" -----------------------------------------------------------------------------
" configure editor basic stuff
" -----------------------------------------------------------------------------
set expandtab           " enter spaces when tab is pressed
set background=dark
set number
set colorcolumn=79      " set line marker at 79 char
set showcmd             " show (partial) command in status line
set showmatch
set splitright          "split to right
set hlsearch            "highlight search
set noswapfile          "ignore swap
syntax enable
set tabstop=2
set shiftwidth=2

"Automatically_removing_all_trailing_whitespace
autocmd BufWritePre *.py :%s/\s\+$//e
autocmd BufWritePre *.xml :%s/\s\+$//e

"Exit insert mode
inoremap jj <ESC>

"Move b/w panes Cmd Opt Arrow
nnoremap <D-A-Right> <C-W><C-L> 
nnoremap <D-A-Left> <C-W><C-H>
nnoremap <D-A-Down> <C-W><C-J>
nnoremap <D-A-Up> <C-W><C-K>

" -----------------------------------------------------------------------------
" configure ALE
" -----------------------------------------------------------------------------
" Check XML files.
let b:ale_linters = ['xmllintr']
" Check Python files with flake8 and pylint.
let b:ale_linters = ['flake8', 'pylint']
" Fix Python files with autopep8 and yapf.
let b:ale_fixers = ['autopep8', 'yapf']
" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'


" -----------------------------------------------------------------------------
" configure look & feel of editor
" -----------------------------------------------------------------------------

" Color Scheme
let g:enable_bold_font = 1
set background=dark
colorscheme hybrid_material 
let g:material_terminal_italics = 1

"airlline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_theme = "hybrid"
let g:airline#extensions#ale#enabled = 1

"https://github.com/davidhalter/jedi-vim
let g:jedi#auto_initialization = 0
let g:jedi#auto_initialization = 0
let g:jedi#use_tabs_not_buffers = 1
let g:jedi#popup_select_first = 0
let g:jedi#show_call_signatures = "1"

"https://github.com/scrooloose/nerdcommenter
let g:NERDSpaceDelims = 1
let g:NERDTrimTrailingWhitespace = 1
nnoremap ,c :call NERDComment(0,"toggle")<CR>
vnoremap ,c :call NERDComment(0,"toggle")<CR>

"https://github.com/Yggdroot/indentLine
let g:indentLine_char = '|'
let g:indentLine_faster = 1

"needtree show hidden files
let NERDTreeShowHidden=1


" if has('mac')
  " if system("osascript -e 'tell application \"Finder\" to get bounds of window of desktop' | cut -d ' ' -f 4") > 900
    " set guifont=Monaco:h12
  " else
    " set guifont=Monaco:h12
  " endif
" endif

