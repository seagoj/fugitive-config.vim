if has("autocmd")
    " Remove fugitive buffers when hidden
    autocmd BufReadPost fugitive://* set bufhidden=delete
endif

nnoremap    <F1>    :update<cr> :Git add %<cr> :Gstatus<cr>
nnoremap    <F2>    :Git push<cr>
