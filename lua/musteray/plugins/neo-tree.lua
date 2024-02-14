return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
	},
	config = function()
		local keymap = vim.keymap

		keymap.set("n", "<C-n>", ":Neotree source=filesystem position=left reveal=true toggle<CR>")
		-- keymap.set("n", "q", ":Neotree action=focus toggle<CR>")
	end,
}
