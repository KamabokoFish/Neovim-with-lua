local status, treesitter = pcall(require, "nvim-treesitter.configs")
if (not status) then return end

treesitter.setup {
  ensure_installed = {"vim","dockerfile","fish","typescript","tsx","javascript","json","lua","gitignore","bash","astro","markdown","css","scss","yaml","toml","vue","php"},
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
