return {
  "lervag/vimtex",
  lazy = false, -- We want vimtex to load immediately for .tex files
  init = function()
    -- This is the core configuration for vimtex
    vim.g.vimtex_view_method = "zathura"
    vim.g.vimtex_compiler_method = "latexmk"
    vim.g.vimtex_format_enabled = 1
    vim.g.vimtex_syntax_conceal = {
      aws = 0,
      braces = 1,
      cites = 1,
      delimiters = 1,
      environments = 1,
      fancy = 1,
      greek = 1,
      math_bounds = 1,
      math_delimiters = 1,
      math_fracs = 1,
      math_super_sub = 1,
      math_symbols = 1,
      sections = 1,
      styles = 1,
    }
  end,
}
