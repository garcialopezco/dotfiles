call pathogen#infect()
set nocompatible
filetype on
syntax on
filetype plugin indent on
set ts=2 sw=2 expandtab

" higlight the first 80 chars
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

"set t_Co=256
"colorscheme 256-grayvim
colorscheme tango2
set hlsearch

au BufNewFile,BufRead *.jst.ejs set filetype=html
au BufRead,BufNewFile *.conf set ft=nginx
autocmd BufReadPre *.js let b:javascript_lib_use_jquery = 1
autocmd BufReadPre *.js let b:javascript_lib_use_underscore = 1
autocmd BufReadPre *.js let b:javascript_lib_use_backbone = 1
autocmd BufReadPre *.js let b:javascript_lib_use_angularjs = 1
autocmd FileType html setlocal indentkeys-=*<Return>
let g:html_indent_inctags = "html,body,head,tbody"
imap <buffer> <leader>it <Plug>Tex_InsertItemOnThisLine

" set numbers
set number

" hide graphical menu options
set guioptions-=m "remove menu bar
set guioptions-=T "remove toolbar
set guioptions-=r "remove right scroll bar
set guioptions-=L "remove left scroll bar
" NerdTree like
let g:netrw_liststyle=3

" Match it
filetype plugin on
runtime macros/matchit.vim

" highlight more than 80 chars
set textwidth=80
let &colorcolumn=join(range(81,999),",")
" set colorcolumn=+1
hi ColorColumn guibg=#2d2d2d ctermbg=246

" vim-airline
let g:airline#extensions#tabline#enabled = 1
" let g:airline_powerline_fonts = 1

" send rspec test to tmux
let g:rspec_command = 'call Send_to_Tmux("rspec {spec}\n")'

" vim-rspec mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" autodelete figitive buffers
autocmd BufReadPost fugitive://* set bufhidden=delete

" set diff vertically
set diffopt+=vertical

map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>
