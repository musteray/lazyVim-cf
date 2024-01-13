return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag",
  },
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      autotag = {
        enable = true,
      },
      ensure_installed = {
        "lua",
        "dockerfile",
        "gitignore",
        "css",
        "scss",
        "html",
        "json",
        "vue",
        "javascript",
        "python",
        "regex",
        "typescript",
        "tsx",
        "yaml",
      },
      highlight = { enable = true },
      indent = { enable = true },
    })

    -- enable nvim-ts-context-commentstring plugin for commenting tsx and jsx
    require("ts_context_commentstring").setup({})
  end,
}
