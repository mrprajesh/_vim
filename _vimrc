set nocompatible                                  " Needed for some plugins
filetype off                                      " Needed to start vundle

if  has('win32') || has('win64')
    set rtp+=~/vimfiles/bundle/Vundle.vim         " Start Vundle
    let path='~/vimfiles/bundle'                  " Needed for Vundle IN WINDOWS
    call vundle#begin(path)                       " Remove above line and pth from brackets for Linux
    if has('gui_running')
        set guifont=Consolas:h10
    endif
else
    set t_Co=256
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()                           " Should handle Linux version
endif

Plugin 'gmarik/Vundle.vim'                        " Update Vundle
Plugin 'scrooloose/nerdcommenter'                 " Comment fast and professionally
Plugin 'scrooloose/nerdtree'                      " Proper file explorer inside vim
Plugin 'Wombat'                                   " Colorscheme
Plugin 'nanotech/jellybeans.vim'                  " Colorscheme
Plugin 'morhetz/gruvbox'                          " Colorscheme
Plugin 'tomasr/molokai'                           " Colorscheme
Plugin 'tpope/vim-surround'                       " Quick Surround with tags or Brackets
Plugin 'octol/vim-cpp-enhanced-highlight'         " Enhanced syntax highlight for CPP files
Plugin 'Lokaltog/vim-easymotion'                  " Quick jumping between lines
Plugin 'myusuf3/numbers.vim'                      " Auto Toggle between relative and normal numbering
Plugin 'godlygeek/csapprox'                       " Make gvim colorschemes work in Terminal (Liunx)
Plugin 'sjl/gundo.vim'                            " Graphical undo tree
Plugin 'marcweber/vim-addon-mw-utils'             " Vim Addons
Plugin 'garbas/vim-snipmate'                      " Snippets for reusable code
Plugin 'tpope/vim-fugitive'                       " Git Wrapper
Plugin 'tomtom/tlib_vim'                          " Needed for SnipMate :(
Plugin 'AutoComplPop'                             " Syntax Completion For C++, C, Python
Plugin 'auto-pairs-gentle'                        " Auto insert matching brackets
Plugin 'autoswap.vim'                             " Make vim stop with swap messages intelligently
Plugin 'godlygeek/tabular'                        " Beautiful Alignment when needed
Plugin 'plasticboy/vim-markdown'                  " Better Markdown support for vim (NEEDS TABULAR)
Plugin 'jceb/vim-orgmode'                         " Add OrgMode support like Emacs
Plugin 'cmdalias.vim'                             " Set up alias for accidental commands
Plugin 'Python-Syntax-Folding'                    " Proper syntax folding for python
Plugin 'nvie/vim-flake8'                          " Point out PEP8 inconsistencies

call vundle#end()                                 " Vundle ends here

syntax on
filetype plugin indent on

colorscheme jellybeans                            " Set active Colorscheme
                                                  " start commands with ; not :
nnoremap ; :
                                                  " Indent everything in insert mode
inoremap <F10> <Esc>mmgg=G`ma
                                                  " Indent everything in normal mode
nnoremap <F10> <Esc>mmgg=G`m
                                                  " Turn on/off current line highlight
nnoremap <F12> :set cul!<CR>
                                                  " Show open buffers and help in quick switching
nnoremap <F5> :buffers<CR>:buffer<Space>
                                                  " Toggle NERDTree without python compile files
inoremap <F2> <Esc>:NERDTreeToggle<CR>a
                                                  " Toggle NERDTree without python compile files
nnoremap <F2> :NERDTreeToggle<CR>
                                                  " comment current line with //
nmap // <leader>ci
                                                  " w!! force write with sudo even if forgot sudo vim
cmap w!! w !sudo tee > /dev/null %
                                                  " Alias for typing mistakes
map :Q :q
map :W :w
nnoremap ,. <Esc>
inoremap ,. <Esc>

let NERDTreeIgnore=['\.pyc$', '__pycache__']      " Ignoring .pyc files and __pycache__ folder
set backspace=indent,eol,start                    " Make backspace work with end of line and indents
set foldmethod=syntax                             " Auto Add folds - Trigger with za
set foldlevel=9999                                " Keep folds open by default
set scrolloff=10                                  " Scroll Offset below and above the cursor
set shiftwidth=4                                  " Indentation
set tabstop=4                                     " Tab = 4 Space
set expandtab                                     " Replace tab with spaces
set hidden                                        " Hide abandoned buffers without message
set wildmenu                                      " Tab command completion in vim
set ignorecase                                    " Ignore case while searching
set smartcase                                     " Case sensitive if Capital included in search
set incsearch                                     " Incremental Searching - Search as you type
set autoindent                                    " Self explained
set relativenumber                                " relative numbering (Current line in line 0)
set number                                        " Line numbers - Hybrid mode when used with rnu
set wrap                                          " I do like wrapping statements

set directory=.,$TEMP                             " Gets rid of a windows specific error
set guioptions-=m                                 " remove menu bar
set guioptions-=T                                 " remove toolbar
set guioptions-=r                                 " remove right-hand scroll bar
set guioptions-=L                                 " remove left-hand scroll bar
