local status,lualine = pcall(require, "lualine")
if (not status) then return end

require('lualine').setup {
  options = {
    theme = "everforest",
  },
}
