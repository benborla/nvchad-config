-- EXAMPLE
local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities
local command = vim.api.nvim_create_user_command
local util = require "lspconfig.util"

local lspconfig = require "lspconfig"
local servers = { "html", "cssls" }
-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end

-- php
lspconfig.phpactor.setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
  filetypes = { "php" },
}

lspconfig.vuels.setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
  cmd = {
    "/Users/lucio/Library/Application Support/Herd/config/nvm/versions/node/v21.7.3/lib/node_modules/vls/bin/vls",
  },
  filetypes = { "vue" },
}
