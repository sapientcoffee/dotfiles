-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("config.lazy")
require("config.keymaps")
require("config.completion")
require("config.treesitter")
require("config.telescope")
require("config.oil")
require("config.formatter")
require("config.gitsigns")
require("config.lualine")
require("config.lsp")
