local status, null_ls = pcall(require, "null-ls")
if (not status) then return end

null_ls.setup({
    sources = {
        null_ls.builtins.diagnostics.eslint.with({
        prefer_local = "node_modules/.bin",
    }),
        null_ls.builtins.diagnostics.rubocop,
        null_ls.builtins.formatting.rubocop,
    },
  on_attach = function(client, bufnr)
    if client.server_capabilities.documentFormattingProvider then
      -- format on save
      vim.cmd("autocmd BufWritePost <buffer> lua vim.lsp.buf.format({async = true})")
    end
  end,
})