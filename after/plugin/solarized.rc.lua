vim.g.solarized_visibility = 'low'
vim.g.solarized_diffmode = 'normal'
vim.g.solarized_statusline = 'flat'

vim.cmd('colorscheme solarized')

vim.cmd([[
highlight NonText ctermbg=NONE guibg=NONE
highlight LineNr ctermbg=NONE guibg=NONE
highlight SignCulumn ctermbg=NONE guibg=NONE
highlight EndOfBuffer ctermbg=NONE guibg=NONE
highlight VertSplit ctermbg=NONE guibg=NONE
]])