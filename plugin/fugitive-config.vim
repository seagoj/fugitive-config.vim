set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

if has("autocmd")
    " Remove fugitive buffers when hidden
    autocmd BufReadPost fugitive://* set bufhidden=delete
endif

" @todo - only map below if in diff
" if &diff
    highlight DiffAdd	 cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
    highlight DiffDelete cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
    highlight DiffChange cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
    highlight DiffText	 cterm=bold ctermfg=10 ctermbg=88 gui=none guifg=bg guibg=Red
    set diffopt+=iwhite
    map     <leader><	    :diffget //2<cr>:diffupdate<cr>]c
    map     <leader>>	    :diffget //3<cr>:diffupdate<cr>]c
" endif
