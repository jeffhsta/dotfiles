return {
  "neovim/nvim-lspconfig",
  lazy = false,
  config = function()
    local capabilities = require('cmp_nvim_lsp').default_capabilities()
    local lspconfig = require("lspconfig")

    lspconfig.rust_analyzer.setup({
      single_file_support = true,
      capabilities = capabilities,
    })

    lspconfig.tsserver.setup({
      filetypes = {
        "javascript",
        "javascriptreact",
        "javascript.jsx",
        "typescript",
        "typescriptreact",
        "typescript.tsx"
      },

      capabilities = capabilities
    })

    local path_to_elixirls = vim.fn.expand("~/code/elixir-ls/release/language_server.sh")
    lspconfig.elixirls.setup({
      cmd = {path_to_elixirls},
      capabilities = capabilities,
      settings = {
        elixirLS = {
          dialyzerEnabled = false,
          fetchDeps = false
        },
      }
    })

    lspconfig.lua_ls.setup({
      capabilities = capabilities,
    })

    lspconfig.pyright.setup({
      capabilities = capabilities,
    })

    lspconfig.html.setup({
      capabilities = capabilities,
    })

    lspconfig.yamlls.setup({
      capabilities = capabilities,
    })

    lspconfig.terraformls.setup({
      capabilities = capabilities,
    })

    lspconfig.sqlls.setup({
      capabilities = capabilities,
    })

    vim.keymap.set( 'n', 'gD', vim.lsp.buf.declaration, {})
    vim.keymap.set ('n', 'gd', vim.lsp.buf.definition, {})
    vim.keymap.set('n' , 'K' , vim.lsp.buf.hover, {})
    vim.keymap.set ('n', 'gi', vim.lsp.buf.implementation, {})
    vim.keymap.set ('n', '<C-k>', vim.lsp.buf.signature_help, {})
    vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, {})
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
    vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, {})

    vim.keymap.set('n', '<leader>cf', function()
      vim.lsp.buf.format { async = true }
    end, {})
  end
}
