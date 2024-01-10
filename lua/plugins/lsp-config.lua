-- lsp config
return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		opts = {
			auto_install = true,
		},
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lsconfig = require("lspconfig")
			lsconfig.lua_ls.setup({
				capabilities = capabilities,
			})
			lsconfig.tsserver.setup({
				capabilities = capabilities,
			})
			lsconfig.html.setup({
				capabilities = capabilities,
			})
			lsconfig.pylsp.setup({
				capabilities = capabilities,
			})
			lsconfig.yamlls.setup({
				capabilities = capabilities,
			})
			lsconfig.cssls.setup({
				capabilities = capabilities,
			})
			lsconfig.volar.setup({
				capabilities = capabilities,
			})
			lsconfig.jsonls.setup({
				capabilities = capabilities,
			})

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
