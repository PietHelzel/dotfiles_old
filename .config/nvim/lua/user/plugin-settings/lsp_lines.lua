require("lsp_lines").setup()

-- Remove normal diagnostic
vim.diagnostic.config({
  virtual_text = false,
})
