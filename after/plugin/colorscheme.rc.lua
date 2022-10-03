vim.g.catppuccin_flavour = "frappe" -- latte, frappe, macchiato, mocha

local status, cat = pcall(require, "catppuccin")
if (not status) then return end


cat.setup({
  transparent_background = false,
  styles = {
		comments = { "italic" },
		conditionals = { "italic" },
  },
  term_colors = true,
  integrations ={
      gitsigns = true,
      telescope = true,
      neotree = false,
      lsp_saga = false,
      cmp = true,
			fern = true,
      native_lsp = {
			enabled = true,
			virtual_text = {
				errors = { "nocombine" },
				hints = { "nocombine" },
				warnings = { "nocombine" },
				information = { "nocombine" },
			},
			underlines = {
				errors = { "undercurl" },
				hints = { "undercurl" },
				warnings = { "undercurl" },
				information = { "undercurl" },
			},
      },
},
})

vim.cmd [[colorscheme catppuccin]]