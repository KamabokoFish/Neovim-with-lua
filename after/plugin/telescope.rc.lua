local status, telescope = pcall(require, "telescope")
if (not status) then return end

local builtin = require('telescope.builtin')

telescope.setup({
  defaults ={
      sorting_strategy = "ascending",
      winblend = 4,
      layout_strategy = 'vertical',
      layout_config = { height = 0.9 },
      file_ignore_patterns = {
        "^.git/",
        "^node_modules/",
      },
  }, 
  extensions = {
    coc = {
        prefer_locations = false, -- always use Telescope locations to preview definitions/declarations/implementations etc
    }
  },
})

telescope.load_extension("frecency") --frecency search
telescope.load_extension("emoji") --find emoji
telescope.load_extension("coc") -- coc integration

vim.keymap.set('n', '<leader>f',
  function()
    builtin.find_files({no_ignore = false,hidden = true})
  end)

vim.keymap.set('n', ',r',
  function()
    builtin.live_grep({hidden = true})
  end)

--定義ジャンプ
vim.keymap.set("n", "gd", ":Telescope coc definitions<cr>", {silent = true})
-- 型定義ジャンプ
vim.keymap.set("n", "gy", ":Telescope coc type_definitions<cr>", {silent = true})
-- diagnostics
vim.keymap.set("n", "<leader>a", ":Telescope coc diagnostics<cr>", {silent = true})

--頻度検索
vim.keymap.set("n", "<leader>l", "<Cmd>lua require('telescope').extensions.frecency.frecency()<CR>", {noremap = true, silent = true})