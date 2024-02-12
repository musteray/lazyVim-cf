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
				javascript = { "prettier" },
				typescript = { "prettier" },
				javascriptreact = { "prettier" },
				typescriptreact = { "prettier" },
				vue = { "prettier" },
				less = { "prettier" },
				css = { "prettier" },
				html = { "prettier" },
				json = { "prettier" },
				yaml = { "prettier" },
				scss = { "prettier" },
				lua = { "stylua" },
				python = { "isort", "black" },
			},
			-- format_on_save = format,
		})

		vim.keymap.set({ "n", "v" }, "<leader>mp", function()
			conform.format(format)
		end, { desc = "Format file or range (in visual mode)" })
	end,
}
