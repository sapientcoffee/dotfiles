local lspconfig = require("lspconfig")
local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")

-- Enable Mason for plugin management
mason.setup()

-- Define the list of LSP servers to be installed and configured
local servers = { "lua_ls" }

-- Configure mason-lspconfig to ensure the servers are installed
mason_lspconfig.setup({
  ensure_installed = servers,
})

-- Loop through the servers and set them up with lspconfig
for _, server_name in ipairs(servers) do
  lspconfig[server_name].setup({})
end
