local status, treesitter = pcall(require, "nvim-treesitter.configs")
if (not status) then return end

treesitter.setup {
  ensure_installed = "all",
  ignore_install = { "html" },
  highlight = {
    enable = true,
    disable = {},
  },
	indent ={
		enable =true
	},
  autotag = {
    enable = false,
  },
}
