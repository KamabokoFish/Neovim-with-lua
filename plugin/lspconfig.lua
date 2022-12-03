local on_attach = function(client, bufnr)

  -- LSPのフォーマットを無効
   client.server_capabilities.documentFormattingProvider = false

  local set = vim.keymap.set
  --set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>")
  -- set("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>")
  -- set("n", "<C-m>", "<cmd>lua vim.lsp.buf.signature_help()<CR>")
  --set("n", "gy", "<cmd>lua vim.lsp.buf.type_definition()<CR>")
  -- set("n", "rn", "<cmd>lua vim.lsp.buf.rename()<CR>")
  -- set("n", "ma", "<cmd>lua vim.lsp.buf.code_action()<CR>")
  -- set("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>")
  -- set("n", "<space>e", "<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>")
  -- set("n", "[d", "<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>")
  -- set("n", "]d", "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>")

    set("n", "<leader>mm", "<cmd>lua vim.lsp.buf.format()<CR>") --明示的に全体に対してnull-lsでフォーマット

end

local capabilities = require("cmp_nvim_lsp").default_capabilities()

require("mason").setup()
require("mason-lspconfig").setup()
require("mason-lspconfig").setup_handlers {
  function (server_name) -- default handler (optional)
    require("lspconfig")[server_name].setup {
      on_attach = on_attach,
      capabilities = capabilities,
    }
  end,
}

-- Diagnostic symbols in the sign column 

local signs = { Error = " ", Warn = ">>", Hint = ">", Info = ">" }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

-- LSP-Diagnostic Settings
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
  virtual_text =true,
  underline = true,
  update_in_insert = false,
  virtual_text = { spacing = 2, prefix = "◆" },
  severity_sort = true,
}
)

vim.diagnostic.config({
  virtual_text = {
    prefix = '◆'
  },
  underline = true,
  virtual_text = true,
  update_in_insert = false,
  float = {
    source = "always", -- Or "if_many"
  },
})
