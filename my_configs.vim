" Show absolute line numbers
" > https://linuxize.com/post/how-to-show-line-numbers-in-vim/
set number

" Keeps the cursor in the middle of the page
set so=999

set expandtab

" Override vim's italic codes
" > https://www.reddit.com/r/vim/comments/24g8r8/italics_in_terminal_vim_and_tmux/
" > Note that the character ^[ must be entered with <C-V><Esc>.
set t_ZH=[3m
set t_ZR=[23m

" Custom colortheme
let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors
let g:gruvbox_italic=1
colorscheme gruvbox

" My key mappings
" jump to end of line while in insert mode
inoremap <C-e> <C-o>$

" Plugin tagbar
nmap <F8> :TagbarToggle<CR>

" Plugin NERDTree
" Open a NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Plugin Black
" run Black on save
let g:black_linelength=79
autocmd BufWritePre *.py execute ':Black'

" Plugin python-mode
let g:pymode_folding = 0
