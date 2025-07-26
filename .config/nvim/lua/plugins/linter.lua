return {
  "mfussenegger/nvim-lint",
  event = { "BufWritePost", "BufReadPost", "InsertLeave" },
  config = function()
    local lint = require("lint")
    lint.linters_by_ft = {
      javascript = { "eslint" },
      typescript = { "eslint" },
    }

    -- Create a custom autocommand to run the linter
    vim.api.nvim_create_autocmd({ "BufWritePost", "BufReadPost", "InsertLeave" }, {
      group = vim.api.nvim_create_augroup("nvim-lint-autogroup", { clear = true }),
      callback = function()
        lint.try_lint()
      end,
    })
  end,
}
