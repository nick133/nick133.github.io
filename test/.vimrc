set t_Co=256
colorscheme wombat256dave

"set keymap=russian-jcukenwin
set iminsert=1
set imsearch=0

highlight lCursor guifg=NONE guibg=Cyan

set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
set indentexpr=
set wrap number
set exrc secure
set noautochdir

autocmd FileType html\|css\|stylus\|javascript setlocal shiftwidth=2 tabstop=2

syntax on

set hlsearch

set encoding=utf-8
"set fileencoding=utf-8

" Autoindent after <Enter>
"imap <C-Return> <CR><CR><C-o>k<Tab>

"set noundofile

set sessionoptions=buffers,folds,help,resize,sesdir,tabpages,winsize
nmap <A-F2> :mksession! Session.vim

" Autocomplete HTML tags inline
inoremap ><Tab> ><Esc>?<[a-z]<CR>lyiwh/[^%]><CR>la</<C-r>"><Esc>:nohl<CR>F<i
" Autocomplete HTML tags on new line
inoremap ><S-Tab> ><Esc>?<[a-z]<CR>lyiwo</<C-r>"><Esc>:nohl<CR>O<Tab>

nmap <A-F1> :echoh Function <bar> echon "\n* Hotkeys quick help:\n\n" <bar>
    \echoh Number <bar> echon " Alt-F1       " <bar> echohl None <bar> echon ": This message\n" <bar>
    \echoh Number <bar> echon " F2           " <bar> echohl None <bar> echon ": File Explorer\n" <bar>
    \echoh Number <bar> echon " F8           " <bar> echohl None <bar> echon ": Clear search hilighting\n" <bar>
    \echoh Number <bar> echon " F4           " <bar> echohl None <bar> echon ": New tab\n" <bar>
    \echoh Number <bar> echon " Ctrl-Tab     " <bar> echohl None <bar> echon ": Next tab\n" <bar>
    \echoh Number <bar> echon " Shift-Tab    " <bar> echohl None <bar> echon ": Previous tab\n" <bar>
    \echoh Number <bar> echon " Alt-,        " <bar> echohl None <bar> echon ": Move tab left\n" <bar>
    \echoh Number <bar> echon " Alt-.        " <bar> echohl None <bar> echon ": Move tab right\n" <bar>
    \echoh Number <bar> echon " Alt-F2       " <bar> echohl None <bar> echon ": Save current session to ./Session.vim\n" <bar>
    \echoh Number <bar> echon " Ctrl-s       " <bar> echohl None <bar> echon ": Save all files\n" <bar>
    \echoh Number <bar> echon " Alt-<Arrows> " <bar> echohl None <bar> echon ": Resize splitted window\n" <bar>
    \echoh None<CR>

nmap <F2> :Hexplore<CR>:res 24<CR>
nmap <F8> :nohl<CR>
nmap <C-s> :wa<CR>

nmap <M-Up> :res +1<CR>
nmap <M-Down> :res -1<CR>
nmap <M-Left> :vertical resize +1<CR>
nmap <M-Right> :vertical resize -1<CR>

" Buffers navigation
nmap gn :bn<CR>
nmap gp :bp<CR>

" -------- Plugins -------- "
filetype plugin on

let g:neocomplete#enable_at_startup=1
