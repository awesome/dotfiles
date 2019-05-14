" http://stackoverflow.com/questions/14367440/map-e-to-explore-in-command-mode
command! E Explore

" This must be first, because it changes other options as side effect
set nocompatible

" change the mapleader from \ to ,
let mapleader=","

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" unwritten changes to a file and open a new file using :e, without being forced to write or undo your changes first
set hidden

set autoindent    " always set autoindenting on
set showmatch     " set show matching parenthesis
"set smartcase     " ignore case if search pattern is all lowercase,
                  "    case-sensitive otherwise


" reformat tabs 'tabstomp'
set ts=8
set noexpandtab
%retab!
set expandtab
%retab!

" set final tabstop
set ts=2
%retab!
set tabstop=2     " a tab is four spaces
"set smarttab      " insert tabs on the start of a line according to
"                  "    shiftwidth, not tabstop

set sw=2
"set shiftwidth=4  " number of spaces to use for autoindenting
set nu
"set number        " always show line numbers

set nosmartindent
"set nowrap        " don't wrap lines
set backspace=indent,eol,start
"                  " allow backspacing over everything in insert mode
"set copyindent    " copy the previous indentation on autoindenting
"set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'

set incsearch     " show search matches as you type
"set ignorecase    " ignore case when searching
set nohls
"set hlsearch      " highlight search terms


set history=10000        " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
"set wildignore=*.swp,*.bak,*.pyc,*.class
"set title                " change the terminal's title
"set visualbell           " don't beep
"set noerrorbells         " don't beep

set ruler
set showcmd
syntax off
set encoding=utf-8 fileencodings=

" temporarily switch to 'paste mode'
set pastetoggle=<F2>
set paste " => default in paste mode

" never ever let Vim write a backup file! They did that in the 70’s. 
"  Use modern [http://git-scm.com] ways for tracking your changes, for God’s sake.
set nobackup
set noswapfile


:highlight Pmenu ctermbg=238 gui=bold
:highlight PmenuSel ctermfg=black

"set listchars=tab:▸\ ,eol:¬,extends:…,trail:■,nbsp:∙
set listchars=tab:▸\ ,trail:■,extends:…,nbsp:∙
set list
nmap ,l :set list!<cr>
nmap ,l1 :set listchars=tab:▸\ ,extends:…,trail:■,nbsp:∙<cr>
nmap ,l2 :set listchars=tab:▸\ ,eol:¬,extends:…,nbsp:∙<cr>
nmap ,-sp :%s/\s*$//g<cr>
"nmap ,-tb :retab


" theme
colorscheme ir_black


" http://stackoverflow.com/questions/916875/yank-file-name-path-of-current-buffer-in-vim
" file full path
nmap ,f :let @" = expand("%:p")<cr>
" file relative path
nmap ,fr :let @" = expand("%")<cr>

"compiler rubyunit
"nmap <Leader>fd :cf /tmp/autotest.txt<cr> :compiler rubyunit<cr>
set expandtab
