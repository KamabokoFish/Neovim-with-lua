vim.g.catppuccin_flavour = "frappe" -- latte, frappe, macchiato, mocha

require('catppuccin').setup({
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
				errors = { "italic" },
				hints = { "italic" },
				warnings = { "italic" },
				information = { "italic" },
			},
			underlines = {
				errors = { "underline" },
				hints = { "underline" },
				warnings = { "underline" },
				information = { "underline" },
			},
      },
},
})

vim.cmd [[colorscheme catppuccin]]