" set nocompatible              " be iMproved, required
" filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'derekwyatt/vim-scala'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
set omnifunc=syntaxcomplete#Complete


" Turn on line numbering. Turn it off with "set nonu" 
set nu 

" Set syntax on
syntax on

" Indent automatically depending on filetype
filetype indent on
set autoindent

" Case insensitive search
set ic

" Higlhight search
set hls

" Wrap text instead of being on one line
set lbr

" Incremental search
set incsearch
" Change colorscheme from default to delek
"colorscheme delek

set title
set ruler           " show the cursor position all the time
set ls=2            " allways show status line
set tabstop=4
set shiftwidth=4
set expandtab
set dictionary=/usr/share/dict/words

" use tabs for mini windows w/in the gvim window, these shortcuts
" help out...
" Actually there's already ones for gvim: gt -> tabnext, gT -> tabprev
" Also ctrl-PageUp, ctrl-PageDown
" Also <num>gt goes to that tab.
map th :tabprev<CR>
map tl :tabnext<CR>
map tn :tabnew<CR>
map td :tabclose<CR>
" Not actually tabs, but more conventient than <ctrl-W>-j
" useful for cycling thru the windows w/o maximizing each time.
"  Of course I can prefix these cmds w/ N to jump that many windows at a time.
" down N windows
map tj <c-w>j
" up N windows
map tk <c-w>k
" top window
map tt <c-w>t
" bottom window
map tb <c-w>b
" maximize the size of the window
map tm :resize<CR>
map <C-M> :resize<CR>
map <C-n> :NERDTreeToggle<CR>
map \ :resize<CR>
" Don't remap enter/<CR>, leave it alone for using file explorer
"map <CR> :resize<CR>
" instead of the default of 1, set the window minimum height to 0 to maximize real
" estate available to an open window.
set wmh=0

"map ,p :set invpaste paste?<CR>
"map ,p :set invpaste<CR>
" http://vim.wikia.com/wiki/Toggle_auto-indenting_for_code_paste
set pastetoggle=,p

" ctrl-S does a write of the file...
map <C-S> :write<CR>

" shortcut to delete a buffer
map -- :bd<CR>

highlight WhiteSpaceEOL ctermbg=red guibg=red
match WhiteSpaceEOL /\s\+$/
autocmd BufWinEnter * match WhiteSpaceEOL /\s\+$/
autocmd InsertEnter * match WhiteSpaceEOL /\s\+\%#\@<!$/
autocmd InsertLeave * match WhiteSpaceEOL /\s\+$/

syntax on
let g:syntaxon = 1

map <F9> :call ToggleSyntax()<cr>
fun! ToggleSyntax()
    if g:syntaxon == 1
        syntax off
        let g:syntaxon = 0
    else
        syntax on
        let g:syntaxon = 1
    endif
endfun

" Normal mode commands
" ctrl-x ctrl-k     - dictionary completion
"
" Insert mode commands
" ctrl-n ctrl-p - dictionay completion
" ctrl-w - erase word
" ctrl-u - erase line
" ctrl-t, ctrl-d  - indent current line forward, backwards 
