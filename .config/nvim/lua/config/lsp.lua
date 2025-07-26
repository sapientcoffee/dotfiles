-- Get the lspconfig plugin
local lspconfig = require("lspconfig")

-- Get the mason plugin
local mason = require("mason")

-- Enable mason
mason.setup()

-- Define the list of LSP servers to install
local servers = { "lua_ls" }

-- Ensure the servers are installed by mason
require("mason.settings").set({
  ensure_installed = servers,
})

-- Loop through the servers and set them up with lspconfig
for _, server_name in ipairs(servers) do
  lspconfig[server_name].setup({})
end