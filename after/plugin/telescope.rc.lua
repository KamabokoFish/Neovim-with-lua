local status, telescope = pcall(require, "telescope")
if (not status) then return end

local builtin = require('telescope.builtin')

telescope.setup({
  defaults ={
      layout_strategy = 'vertical',
      layout_config = { height = 0.7,width = 0.7 },
  },
})


vim.keymap.set('n', '<leader>f',
  function()
    builtin.find_files({
      no_ignore = false,
      hidden = true
    })
  end)
vim.keymap.set('n', ',r', function()
  builtin.live_grep({hidden = true})
end)

vim.keymap.set('n', ',a', function()
  builtin.diagnostics()
end)

vim.keymap.set('n', ',o', function()
  builtin.oldfiles({hidden = true})
end)

vim.keymap.set('n', ',l', function()
  builtin.buffers({hidden = true})
end)
