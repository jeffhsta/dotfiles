return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs"). setup({
      -- ensure_installed = { "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html", "css", "typescript", "python", "rust", "sql" },
      auto_install = true,
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}
