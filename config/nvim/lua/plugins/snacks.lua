-- configure Snacks - the file explorer plugin
return {
  "folke/snacks.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    -- Explorer module (tree-style “picker in disguise”)
    explorer = {
      enabled = true,
      replace_netrw = true,
      hidden = true,
      ignored = true,
    },
    -- Picker defaults + per-source overrides
    picker = {
      hidden = true,
      ignored = true,
      sources = {
        explorer = { hidden = true, ignored = true }, -- keep explorer consistent
        files = { hidden = true, ignored = false }, -- ensure <leader>ff does not shows Git ignored files
        grep = { hidden = true, ignored = true }, -- ensure searches see all
      },
    },
  },
}
