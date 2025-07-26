-- [[ Keymaps ]]
vim.g.mapleader = " " -- Set leader key to space
vim.keymap.set('n', '<leader>e', ':Neotree toggle<CR>', {
  desc = 'Toggle file explorer'
})

vim.keymap.set('n', '<leader>ff', ':Telescope find_files<CR>', {
  desc = 'Find files'
})

vim.keymap.set('n', '<leader>fg', ':Telescope live_grep<CR>', {
  desc = 'Live grep'
})

vim.keymap.set('n', '<leader>fb', ':Telescope buffers<CR>', {
  desc = 'Find buffers'
})

vim.keymap.set('n', '<leader>fh', ':Telescope help_tags<CR>', {
  desc = 'Find help tags'
})

vim.keymap.set('n', '<leader>fo', ':Oil<CR>', {
  desc = 'Open oil file explorer'
})
  desc = 'Toggle file explorer'
})