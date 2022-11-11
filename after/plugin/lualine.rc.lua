local status,lualine = pcall(require, "lualine")
if (not status) then return end

require('lualine').setup {
  -- options = {
  --   -- ... your lualine config
  --   theme = 'tokyonight'
  --   -- ... your lualine config
  -- }
}