syntax on

set si
set guifont=@Fixedsys


set hls
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set backspace=indent,eol,start
set smarttab
set noswapfile
set smartcase
set nowrap
set expandtab
set smartindent
set nobackup
set matchtime=5
set is
set ts=4
set sw=4
set undodir=~/.vim/undodir
set undofile

au GUIEnter * simalt ~x

noremap <silent> <F1> :tabnew abcd/a.cpp <cr> 
noremap <silent> <F2> :tabnew abcd/b.cpp <cr>
noremap <silent> <F3> :tabnew abcd/c.cpp <cr>
noremap <silent> <F4> :tabnew abcd/d.cpp <cr>

autocmd filetype cpp nnoremap <F10> :w <bar> !g++ -std=c++17 % -o %:r -Wl,--stack,268435456<CR>
autocmd filetype cpp nnoremap <F9> :!%:r<CR>

noremap <F8> ZZ <cr> 

inoremap { {}<Left>
inoremap {<CR> {<CR>}<Esc>O
inoremap {{ {
inoremap {} {} 

set nu
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set rnu
    autocmd BufLeave,FocusLost,InsertEnter * set nornu
augroup END

set guioptions-=T  "toolbar

