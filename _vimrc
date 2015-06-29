if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall
endif

call plug#begin()
Plug 'scrooloose/nerdcommenter'                                      " Comment fast and professionally
Plug 'scrooloose/nerdtree' , {'on': 'NERDTreeToggle'}                " Proper file explorer inside vim
Plug 'Wombat'                                                        " Colorscheme
Plug 'nanotech/jellybeans.vim'                                       " Colorscheme
Plug 'morhetz/gruvbox'                                               " Colorscheme
Plug 'tomasr/molokai'                                                " Colorscheme
Plug 'tpope/vim-surround'                                            " Quick Surround with tags or Brackets
Plug 'octol/vim-cpp-enhanced-highlight'                              " Enhanced syntax highlight for CPP files
Plug 'Lokaltog/vim-easymotion'                                       " Quick jumping between lines
Plug 'myusuf3/numbers.vim'                                           " Auto Toggle between relative and normal numbering
Plug 'godlygeek/csapprox'                                            " Make gvim colorschemes work in Terminal (Liunx)
Plug 'sjl/gundo.vim'                                                 " Graphical undo tree
Plug 'marcweber/vim-addon-mw-utils'                                  " Vim Addons
Plug 'garbas/vim-snipmate'                                           " Snippets for reusable code
Plug 'tpope/vim-fugitive'                                            " Git Wrapper
Plug 'tomtom/tlib_vim'                                               " Needed for SnipMate :(
Plug 'auto-pairs-gentle'                                             " Auto insert matching brackets
Plug 'autoswap.vim'                                                  " Make vim stop with swap messages intelligently
Plug 'godlygeek/tabular'                                             " Beautiful Alignment when needed
Plug 'plasticboy/vim-markdown'                                       " Better Markdown support for vim (NEEDS TABULAR)
Plug 'jceb/vim-orgmode'                                              " Add OrgMode support like Emacs
Plug 'cmdalias.vim'                                                  " Set up alias for accidental commands
Plug 'Python-Syntax-Folding'                                         " Proper syntax folding for python
Plug 'nvie/vim-flake8'                                               " Point out PEP8 inconsistencies
Plug 'bling/vim-airline'                                             " Who doesn't know about vim airline plugin
Plug 'kien/ctrlp.vim'                                                " Fast fuzzy file searching
Plug 'terryma/vim-multiple-cursors'                                  " Multiple Cursors like Sublime Text
Plug 'LaTeX-Suite-aka-Vim-LaTeX'                                     " LaTeX editing for vim
Plug 'kchmck/vim-coffee-script'                                      " Highlighting and syntax for coffeescript
Plug 'fatih/vim-go'                                                  " Go completion and features
call plug#end()                                                      " Vundle ends here

syntax on
filetype plugin indent on

colorscheme jellybeans                                               " Set active Colorscheme
                                                                     " start commands with ; not :
nnoremap ; :
                                                                     " Indent everything in insert mode
inoremap <F10> <Esc>mmgg=G`ma
                                                                     " Indent everything in normal mode
nnoremap <F10> <Esc>mmgg=G`m
                                                                     " Turn on/off current line highlight
nnoremap <F9> :set cul!<CR>
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
                                                                     " Easy Motion shortcut. Try it!
nmap ,, <leader><leader>s

nnoremap ,. <Esc>
inoremap ,. <Esc>
nnoremap  <silent>   <tab>  :bnext<CR>
nnoremap  <silent> <s-tab>  :bprevious<CR>
                                                                     " Switch buffers with Tab and Shift-Tab
inoremap <// </<C-X><C-O><C-[>m'==`'
nnoremap <F3> :w<CR>:!pdflatex<Space>%<CR>:!evince<Space>%:r.pdf<CR>


                        " --------------------------------CONFIGS----------------------------- "

let NERDTreeIgnore=['\.pyc$', '__pycache__']                         " Ignoring .pyc files and __pycache__ folder
let g:go_fmt_command = "goimports"                                   " Rewrite go file with correct imports
set wildignore+=*/bin/*,main,*/__pycache__/*,*.pyc,*.swp
set backspace=indent,eol,start                                       " Make backspace work with end of line and indents
set foldmethod=syntax                                                " Auto Add folds - Trigger with za
set foldlevel=9999                                                   " Keep folds open by default
set scrolloff=10                                                     " Scroll Offset below and above the cursor
set shiftwidth=4                                                     " Indentation
set tabstop=4                                                        " Tab = 4 Space
set expandtab                                                        " Replace tab with spaces
set hidden                                                           " Hide abandoned buffers without message
set wildmenu                                                         " Tab command completion in vim
set ignorecase                                                       " Ignore case while searching
set smartcase                                                        " Case sensitive if Capital included in search
set incsearch                                                        " Incremental Searching - Search as you type
set autoindent                                                       " Self explained
set relativenumber                                                   " relative numbering (Current line in line 0)
set number                                                           " Line numbers - Hybrid mode when used with rnu
set nowrap                                                           " I don't like wrapping statements
set laststatus=2                                                     " Show status line for even 1 file
set tags=~/.mytags                                                   " Path to generated tags
set mouse=nv
let g:airline_powerline_fonts = 1                                    " Powerline fonts
let g:airline#extensions#tabline#enabled = 1                         " Show buffers above



                        "----------------------------GVIM SPECIFIC-----------------------------"

set directory=.,$TEMP                                                " Gets rid of a windows specific error
set guioptions-=m                                                    " remove menu bar
set guioptions-=T                                                    " remove toolbar
set guioptions-=r                                                    " remove right-hand scroll bar
set guioptions-=L                                                    " remove left-hand scroll bar
