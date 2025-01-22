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
  }
}
