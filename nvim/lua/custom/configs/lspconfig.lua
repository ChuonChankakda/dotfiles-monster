local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

local servers = { "html", "cssls" } -- Added pyre language server

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig.intelephense.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetype = {"php"},
  root_dir = lspconfig.util.root_pattern("composer.json", ".git", "index.php"),
})


lspconfig.phpactor.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetype = {"php"},
  root_dir = lspconfig.util.root_pattern("composer.json", ".git", "index.php"),
})
