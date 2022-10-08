vim.g.catppuccin_flavour = "frappe" -- latte, frappe, macchiato, mocha

local status, cat = pcall(require, "catppuccin")
if (not status) then return end

cat.setup({
  transparent_background = false,
  styles = {
		comments = { "italic" },
		conditionals = { "italic" },
    functions = {"italic"},
  },
  term_colors = true,
  integrations ={
      gitsigns = true,
      telescope = true,
			treesitter = true,
      neotree = false,
      lsp_saga = false,
      cmp = true,
			fern = true,
			indent_blankline = {
			enabled = true,
			colored_indent_levels = false,
			},
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
-- colorschemeをセットする際に、vim.opt.list=falseにしておかないとタブ文字の色が目立つ
vim.cmd([[colorscheme catppuccin]])
