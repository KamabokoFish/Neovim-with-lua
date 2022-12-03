
vim.cmd([[
let g:indent_blankline_char = '│'
]])
-- それぞれインデントラインの色とスペース/タブを入れたときのListCharsの色を指定
-- vim.cmd [[highlight IndentBlanklineIndent guifg=#E06C75 gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineSpaceChar guifg=#FFFFFF gui=nocombine]]

require("indent_blankline").setup {
  -- char_highlight_list = {
  -- 指定した色を読み込み
  --       "IndentBlanklineIndent",
  --       "IndentBlanklineSpaceChar",
  --   },
}