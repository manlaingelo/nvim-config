-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

-- tailwind config, required to install `npm install -g @tailwindcss/language-server`
require'lspconfig'.tailwindcss.setup{}

-- 
require'lspconfig'.typos_lsp.setup{}

local lspconfig = require "lspconfig"

-- EXAMPLE
local servers = { "html", "cssls" }
local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

-- configuring single server, example: typescript
-- lspconfig.ts_ls.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }
