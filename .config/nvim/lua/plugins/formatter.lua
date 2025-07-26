return {
  "nvimtools/none-ls.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.diagnostics.eslint.with({
          command = "/usr/local/bin/eslint",
        }),
        null_ls.builtins.formatting.eslint.with({
          command = "/usr/local/bin/eslint",
        }),
      },
    })
  end,
}