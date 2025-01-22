return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "nvimtools/none-ls-extras.nvim",
  },
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        --Lua
        null_ls.builtins.formatting.stylua,
        --JS/TS
        null_ls.builtins.formatting.prettierd,
        require("none-ls.diagnostics.eslint"),
        --PHP
        null_ls.builtins.formatting.pint,
        null_ls.builtins.diagnostics.phpstan,
        --SQL
        null_ls.builtins.formatting.sqlfluff,
        null_ls.builtins.diagnostics.sqlfluff,
      },
    })
    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
  end,
}
