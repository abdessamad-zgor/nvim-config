local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "veeming.lsp.mason"
require("veeming.lsp.handlers").setup()
require "veeming.lsp.null-ls"