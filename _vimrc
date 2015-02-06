set nocompatible                          " Needed for some plugins
filetype off                              " Needed to start vundle

if  has('win32') || has('win64')
    set rtp+=~/vimfiles/bundle/Vundle.vim " Start Vundle
    let path='~/vimfiles/bundle'          " Needed for Vundle IN WINDOWS
    call vundle#begin(path)               " Remove above line and pth from brackets for Linux
    if has('gui_running')
        set guifont=Consolas:h10
    endif
else
    set t_Co=256
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()                   " Should handle Linux version
endif

Plugin 'gmarik/Vundle.vim'                " Update Vundle
Plugin 'scrooloose/nerdcommenter'         " Comment fast and professionally
Plugin 'scrooloose/nerdtree'              " Proper file explorer inside vim
Plugin 'Wombat'                           " Colorscheme
Plugin 'nanotech/jellybeans.vim'          " Colorscheme
Plugin 'morhetz/gruvbox'                  " Colorscheme
Plugin 'tomasr/molokai'                   " Colorscheme
Plugin 'tpope/vim-surround'               " Quick Surround with tags or Brackets
Plugin 'octol/vim-cpp-enhanced-highlight' " Enhanced syntax highlight for CPP files
Plugin 'Lokaltog/vim-easymotion'          " Quick jumping between lines
Plugin 'myusuf3/numbers.vim'              " Auto Toggle between relative and normal numbering
Plugin 'godlygeek/csapprox'               " Make gvim colorschemes work in Terminal (Liunx)
Plugin 'sjl/gundo.vim'                    " Graphical undo tree
Plugin 'marcweber/vim-addon-mw-utils'     " Vim Addons
Plugin 'garbas/vim-snipmate'              " Snippets for reusable code
Plugin 'tpope/vim-fugitive'               " Git Wrapper
Plugin 'tomtom/tlib_vim'                  " Needed for SnipMate :(
Plugin 'AutoComplPop'                     " Syntax Completion For C++, C, Python
Plugin 'auto-pairs-gentle'                " Auto insert matching brackets
Plugin 'autoswap.vim'                     " Make vim stop with swap messages intelligently
Plugin 'godlygeek/tabular'                " Beautiful Alignment when needed
call vundle#end()                         " Vundle ends here

syntax on
filetype plugin indent on

colorscheme jellybeans

set backspace=indent,eol,start            " Make backspace work with end of line and indents
set foldmethod=indent                     " Auto Add folds - Trigger with za
set foldlevel=9999                        " Keep folds open by default
set scrolloff=10                          " Scroll Offset below and above the cursor
set shiftwidth=4                          " Indentation
set tabstop=4                             " Tab = 4 Space
set expandtab                             " Replace tab with spaces
set hidden                                " Hide abandoned buffers without message
set wildmenu                              " Tab command completion in vim
set ignorecase                            " Ignore case while searching
set smartcase                             " Case sensitive if Capital included in search
set incsearch                             " Incremental Searching - Search as you type
set autoindent                            " Self explained
set relativenumber                        " relative numbering (Current line in line 0)
set number                                " Line numbers - Hybrid mode when used with relativenumber
set nowrap                                " I don't like wrapping statements

nnoremap ; :
nnoremap <F5> :buffers<CR>:buffer<Space>
nnoremap <F10> <Esc>mmgg=G`m
inoremap <F10> <Esc>mmgg=G`ma
nmap // <leader>ci
cmap w!! w !sudo tee > /dev/null %

set directory=.,$TEMP                     " Gets rid of a windows specific error
set guioptions-=m                         " remove menu bar
set guioptions-=T                         " remove toolbar
set guioptions-=r                         " remove right-hand scroll bar
set guioptions-=L                         " remove left-hand scroll bar
