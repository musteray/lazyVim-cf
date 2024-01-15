return {
	"stevearc/conform.nvim",
	lazy = true,
	event = { "BufReadPre", "BufNewFile" }, -- to disable, comment this out
	config = function()
		local conform = require("conform")
		local format = {
			lsp_fallback = true,
			async = false,
			timeout_ms = 1000,
		}

		conform.setup({
			formatters_by_ft = {
				javascript = { "prettierd" },
				typescript = { "prettierd" },
				javascriptreact = { "prettierd" },
				typescriptreact = { "prettierd" },
				less = { "prettierd" },
				css = { "prettierd" },
				html = { "prettierd" },
				json = { "prettierd" },
				yaml = { "prettierd" },
				scss = { "prettierd" },
				lua = { "stylua" },
				python = { "isort", "black" },
			},
			format_on_save = format,
		})

		vim.keymap.set({ "n", "v" }, "<leader>mp", function()
			conform.format(format)
		end, { desc = "Format file or range (in visual mode)" })
	end,
}
