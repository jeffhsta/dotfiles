return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup({
      })
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "rust_analyzer",
          "pyright",
          "tsserver",
          "elixirls",
          "html",
          "yamlls",
          "terraformls",
          "sqlls",
        },
      })
    end
  },
}
