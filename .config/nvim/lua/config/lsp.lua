local lspconfig = require("lspconfig")
local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")

-- Enable Mason for plugin management
mason.setup()

-- Configure mason-lspconfig to bridge Mason and lspconfig
mason_lspconfig.setup({
  -- A list of servers to automatically install if they're not already installed
  ensure_installed = { "lua_ls" },

  -- This is the a default handler that will be called for each installed server.
  -- It calls the server's `setup` function with an empty configuration table.
  handlers = {
    function(server_name)
      lspconfig[server_name].setup({})
    end,
  },
})