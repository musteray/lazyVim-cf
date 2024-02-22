return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.5",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope-ui-select.nvim",
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local actions = require("telescope.actions")
		local builtin = require("telescope.builtin")

		require("telescope").setup({
			defaults = {
				mappings = {
					i = {
						["<C-k>"] = actions.move_selection_previous, -- move to prev result
						["<C-j>"] = actions.move_selection_next, -- move to next result
						["<C-h>"] = "which_key", -- show which_key
					},
					n = {
						["<C-h>"] = "which_key", -- show which_key
					},
				},
			},
			extensions = {
				["ui-select"] = {
					require("telescope.themes").get_dropdown({}),
				},
			},
		})

		require("telescope").load_extension("ui-select")

		local keymap = vim.keymap -- for conciseness

		keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope file files" }) -- find file
		keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" }) -- search inside all files
		keymap.set("n", "<leader>fo", builtin.oldfiles, { desc = "Telescope recent open files" }) -- open recent opened files
		keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers list" }) -- open lsit of buffers current nvim
	end,
}
