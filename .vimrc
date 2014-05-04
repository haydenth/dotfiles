syntax on
hi Constant ctermfg=cyan
hi Identifier cterm=bold ctermfg=lightblue
hi Comment ctermfg=magenta
hi Type ctermfg=green
hi Error ctermbg=red ctermfg=white
hi Statement ctermfg=yellow
hi PreProc ctermfg=magenta
hi Normal cterm=none ctermfg=White
hi NonText cterm=none ctermfg=Red
hi Special cterm=none ctermfg=white
set expandtab
set ts=2
set wrap
set shiftwidth=2
set smartindent
set paste
set ruler

filetype on
au BufNewFile,BufRead *.hx set filetype=haxe
