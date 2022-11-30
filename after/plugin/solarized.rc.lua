vim.g.solarized_visibility = 'low'
vim.g.solarized_diffmode = 'normal'

-- To enable transparency
if vim.fn.has('gui_running') == 0 then
    vim.g.solarized_termtrans = 0
else
    vim.g.solarized_termtrans = 1
end

vim.g.solarized_statusline = 'flat'

vim.cmd('colorscheme solarized')

vim.cmd([[
highlight SpecialKey ctermbg=NONE guibg=NONE
highlight LineNr ctermbg=NONE guibg=NONE
highlight SignCulumn ctermbg=NONE guibg=NONE
highlight VertSplit ctermbg=NONE guibg=NONE
]])