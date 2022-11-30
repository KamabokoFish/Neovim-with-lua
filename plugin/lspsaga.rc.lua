local status, saga = pcall(require, "lspsaga")
if (not status) then return end

local keymap = vim.keymap.set

saga.init_lsp_saga{
-- Options with default value
-- "single" | "double" | "rounded" | "bold" | "plus"
border_style = "single",
--the range of 0 for fully opaque window (disabled) to 100 for fully
--transparent background. Values between 0-30 are typically most useful.
saga_winblend = 2,
-- when cursor in saga window you config these to move
move_in_saga = { prev = '<C-p>',next = '<C-n>'},
diagnostic_header = { " ", " ", " ", "ﴞ " },
-- preview lines of lsp_finder and definition preview
max_preview_lines = 15,
-- use emoji lightbulb in default
code_action_icon = "◆",
-- if true can press number to execute the codeaction in codeaction window
code_action_num_shortcut = true,
-- same as nvim-lightbulb but async
code_action_lightbulb = {
    enable = false,
    enable_in_insert = false,
    cache_code_action = false,
    sign = true,
    update_time = 150,
    sign_priority = 20,
    virtual_text = true,
},
-- finder icons
finder_icons = {
  def = '  ',
  ref = '諭 ',
  link = '  ',
},
-- finder do lsp request timeout
-- if your project big enough or your server very slow
-- you may need to increase this value
finder_request_timeout = 1500,
finder_action_keys = {
    open = "o",
    vsplit = "s",
    split = "i",
    tabe = "t",
    quit = "q",
},
code_action_keys = {
    quit = "q",
    exec = "<CR>",
},
definition_action_keys = {
  edit = '<C-c>o',
  vsplit = '<C-c>v',
  split = '<C-c>i',
  tabe = '<C-c>t',
  quit = 'q',
},
rename_action_quit = "<C-c>",
rename_in_select = true,
-- show symbols in winbar must nightly
-- in_custom mean use lspsaga api to get symbols
-- and set it to your custom winbar or some winbar plugins.
-- if in_cusomt = true you must set in_enable to false
symbol_in_winbar = {
    in_custom = false,
    enable = false,
    separator = ' ',
    show_file = false,
    -- define how to customize filename, eg: %:., %
    -- if not set, use default value `%:t`
    -- more information see `vim.fn.expand` or `expand`
    -- ## only valid after set `show_file = true`
    file_formatter = "",
    click_support = false,
},
-- show outline
show_outline = {
  win_position = 'right',
  --set special filetype win that outline window split.like NvimTree neotree
  -- defx, db_ui
  win_with = '',
  win_width = 35,
  auto_enter = true,
  auto_preview = true,
  virt_text = '┃',
  jump_key = 'o',
  -- auto refresh when change buffer
  auto_refresh = true,
},
-- custom lsp kind
-- usage { Field = 'color code'} or {Field = {your icon, your color code}}
custom_kind = {},
-- if you don't use nvim-lspconfig you must pass your server name and
-- the related filetypes into this table
-- like server_filetype_map = { metals = { "sbt", "scala" } }
server_filetype_map = {},
}
keymap("n", "<space>e", "<cmd>Lspsaga show_line_diagnostics<CR>", { silent = true })
keymap("n", "gf", "<cmd>Lspsaga lsp_finder<CR>", { silent = true })
keymap("n", "gd", "<cmd>Lspsaga peek_definition<CR>", { silent = true })
keymap({"n","v"}, "ma", "<cmd>Lspsaga code_action<CR>", { silent = true })
keymap("n", "rn", "<cmd>Lspsaga rename<CR>", { silent = true })
keymap("n", "K", "<cmd>Lspsaga hover_doc<CR>", { silent = true })
-- Diagnsotic jump can use `<c-o>` to jump back
keymap("n", "g[", "<cmd>Lspsaga diagnostic_jump_prev<CR>", { silent = true })
keymap("n", "g]", "<cmd>Lspsaga diagnostic_jump_next<CR>", { silent = true })