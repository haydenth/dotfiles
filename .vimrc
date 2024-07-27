syntax on
set nocompatible
hi Constant ctermfg=Cyan
hi Identifier ctermfg=lightblue
hi Variable ctermfg=cyan
hi Comment term=bold ctermfg=red
hi Type ctermfg=green
hi Error ctermbg=red ctermfg=White
hi Statement ctermfg=yellow
hi PreProc ctermfg=magenta
hi Normal cterm=none ctermfg=White
hi NonText cterm=none ctermfg=Red
hi Special cterm=none ctermfg=White
hi Function ctermfg=green

set wrap
set ruler

autocmd BufWritePost *.py,*.css,*.js,*.html :%s/	/  /ge

set expandtab shiftwidth=2 softtabstop=2 smarttab

" turn on indentation for html files only
augroup mail_trailing_whitespace " {
    autocmd!
    autocmd FileType html filetype plugin indent on
augroup END " }
