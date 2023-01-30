-- vim-fugnitive
vim.cmd([[
nnoremap <silent> <space>b :Git blame<CR>
nnoremap <silent> <space>d :Gvdiffsplit<CR>
nnoremap <silent> <space>l :Git log --graph<CR><C-w>T
]])

local opts = {silent = true, noremap = true}
-- LazyGitを起動
vim.keymap.set("n","<space>s",":LazyGit<cr>",opts)