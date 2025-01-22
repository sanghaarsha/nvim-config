return {
  "nvim-treesitter/nvim-treesitter", 
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")
    
    configs.setup({
    ensure_installed = { 
        "c", 
        "cpp", 
        "css",
        "go",
        "html", 
        "javascript",
        "jsdoc",
        "json",
        "jsonc",
        "lua", 
        "php",
        "python",
        "vue",
        "xml",
        "yaml"
      },
    highlight = { enable = true },
    indent = { enable = true },
    })
  end
}
