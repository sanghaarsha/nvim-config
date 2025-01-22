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
      lspconfig.lua_ls.setup({})
    end
  },
}
