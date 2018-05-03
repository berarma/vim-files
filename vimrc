call plug#begin()
Plug '2072/PHP-Indenting-for-VIm'
Plug 'Konfekt/FastFold'
Plug 'SirVer/ultisnips'
Plug 'mileszs/ack.vim'
Plug 'adoy/vim-php-refactoring-toolbox'
Plug 'airblade/vim-gitgutter'
Plug 'alvan/vim-php-manual'
Plug 'chrisbra/colorizer'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'groenewege/vim-less'
Plug 'honza/vim-snippets'
Plug 'jparise/vim-graphql'
Plug 'lvht/phpcd.vim', { 'for': 'php', 'branch': 'php5', 'do': 'composer install' }
Plug 'majutsushi/tagbar'
Plug 'mattn/emmet-vim'
Plug 'mtth/scratch.vim'
Plug 'myusuf3/numbers.vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'sjl/gundo.vim'
Plug 'townk/vim-autoclose'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-obsession' | Plug 'dhruvasagar/vim-prosession'
Plug 'tpope/vim-ragtag'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tyru/open-browser.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-vdebug/vdebug'
Plug 'vim-scripts/desert256.vim'
Plug 'w0rp/ale'
call plug#end()

" Load matchit.vim, but only if the user hasn't installed a newer version.
if !exists('g:loaded_matchit') && findfile('plugin/matchit.vim', &rtp) ==# ''
  runtime! macros/matchit.vim
endif

set nocompatible
filetype indent plugin on
syntax on
syntax sync minlines=256

set autoindent
set background=dark
set backspace=indent,eol,start
set breakindent
set complete-=i
set confirm
set encoding=utf-8
set expandtab
set foldcolumn=3
set foldlevelstart=1
set hidden
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set lazyredraw
set list listchars=tab:▸·,eol:.,trail:·
set noshowmode
set nostartofline
set notimeout ttimeoutlen=0
set number
set pastetoggle=<F11>
set path=.,, " Remove extra directories from file search path
set ruler
set scrolloff=5
set shiftwidth=4
set sidescrolloff=5
set smartcase
set softtabstop=4
set tabstop=4
set undofile
set visualbell
set wildmenu

" Vim settings
set t_Co=256
set t_vb=

" Colorscheme
silent! colorscheme desert256

" Set color for special chars
hi SpecialKey ctermfg=239 ctermbg=NONE guifg=gray30 guibg=NONE

" Set font for gui version
set guifont=Terminus

" Set space between lines in gui version
set linespace=2

" Don't use the Alt key for menus in gui version
set winaltkeys=no

" Remove menu and toolbar
set guioptions-=mT

" Buffer navigation
nmap <S-Tab> :bp<CR>
nmap <TAB> :bn<CR>

" Set Space as leader key
let mapleader="\<Space>"
nnoremap <silent> <Leader><Space> :nohlsearch<CR>

" Setup PHP folding
let g:php_folding=1
let g:PHP_outdentphpescape = 0

" Airline config
let g:airline_highlighting_cache = 1
let g:airline#extensions#tabline#enabled = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.maxlinenr = '㏑'
let g:airline_symbols.branch = '⎇ '
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'

" ctrlp.vim config
let g:ctrlp_extensions = ['autoignore']

" indent-guides config
let g:indent_guides_enable_on_vim_startup = 1
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=235
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=236
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 2

" ALE config
let g:ale_sign_column_always = 1
let g:ale_lint_delay = 500
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1
let g:ale_linters = {
\ 'php': ['php'],
\}
inoremap <C-c> <Esc>
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

" Ack: highlight search term
let g:ackhighlight = 1
if executable('ag')
    let g:ackprg = 'ag --vimgrep'
endif

" ctrlp: faster file reading
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

" Tagbar: don't show variables
let g:tagbar_type_php  = {
      \ 'ctagstype' : 'php',
      \ 'kinds'     : [ 'i:interfaces', 'c:classes', 'd:constant definitions', 'f:functions', 'j:javascript functions:1' ]
      \ }
nmap <F8> :TagbarToggle<CR>

" Colorizer config
let g:colorizer_auto_filetype='html,css,less'

" Load .vimrc.local
if filereadable(glob("~/.vimrc.local")) 
    source ~/.vimrc.local
endif
