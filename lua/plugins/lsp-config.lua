return {
  {
  "williamboman/mason.nvim",
  config = function()
      require("mason").setup()
  end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {"cssls","html","lua_ls","ts_ls","intelephense", "sqls","volar","tailwindcss"}
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require('lspconfig')
      lspconfig.cssls.setup({})
      lspconfig.html.setup({})
      lspconfig.lua_ls.setup({})
      lspconfig.ts_ls.setup({})
      lspconfig.intelephense.setup({})
      lspconfig.sqls.setup({})
      lspconfig.volar.setup({})
      lspconfig.tailwindcss.setup({})

      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set({'n','v'}, '<leader>ca', vim.lsp.buf.code_action, {})
    end
  }
}
