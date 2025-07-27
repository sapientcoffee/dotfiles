return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope-bibtex.nvim",
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      -- This is needed to ensure the fzf native extension is built
      build = "make",
    },
  },
  config = function()
    -- Load the fzf and bibtex extensions
    require("telescope").load_extension("fzf")
    require("telescope").load_extension("bibtex")
  end,
}
