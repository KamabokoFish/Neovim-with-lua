vim.cmd([[
nnoremap <silent> <space>s :Git<CR><C-w>T
nnoremap <silent> <space>a :Gwrite<CR>
nnoremap <silent> <space>c :Git commit -v<CR>
nnoremap <silent> <space>b :Git blame<CR>
nnoremap <silent> <space>d :Gvdiffsplit<CR>
]])