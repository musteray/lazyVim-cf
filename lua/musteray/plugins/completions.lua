-- completions configs
return {
  {
    "hrsh7th/cmp-nvim-lsp",
  },
  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
      "hrsh7th/cmp-buffer",        -- source for text in buffer
      "hrsh7th/cmp-path",          -- source for file system paths
      "L3MON4D3/LuaSnip",          -- snippet engine
      "saadparwaiz1/cmp_luasnip",  -- for autcompletion
      "rafamadriz/friendly-snippets", -- useful snippets
    },
    config = function()
      local cmp = require("cmp")

      -- loads vscode style snippets from installed plugins (e.g friendly-snippets)
      require("luasnip.loaders.from_vscode").lazy_load()

      cmp.setup({
        completion = {
          completeopt = "menu,menuone,preview,noselect",
        },
        snippet = { -- configure how nvim-cmp interacts with snippet engine
          expand = function(args)
            require("luasnip").lsp_expand(args.body)
          end,
        },
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
        mapping = cmp.mapping.preset.insert({
          ["<C-k>"] = cmp.mapping.select_prev_item(), -- previous suggestion
          ["<C-j>"] = cmp.mapping.select_next_item(), -- next suggestion
          ["<C-b>"] = cmp.mapping.scroll_docs(-4),
          ["<C-f>"] = cmp.mapping.scroll_docs(4),
          ["<C-Space>"] = cmp.mapping.complete(), -- show completion suggestions
          ["<C-e>"] = cmp.mapping.abort(),   -- abort completion window
          ["<CR>"] = cmp.mapping.confirm({ select = false }),
        }),
        -- sources for autcompletion
        sources = cmp.config.sources({
          { name = "nvim_lsp" },
          { name = "luasnip" }, -- snippets
          { name = "buffer" }, -- text within current buffer
          { name = "path" }, -- file system paths
        }),
      })
    end,
  },
}
