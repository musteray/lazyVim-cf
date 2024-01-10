-- nvim-treesitter
return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
			ensure_installed = {
				"lua",
				"css",
				"scss",
				"html",
				"json",
				"vue",
				"javascript",
				"php",
				"python",
				"regex",
				"typescript",
				"tsx",
				"yaml",
			},
			-- auto_install = true,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
