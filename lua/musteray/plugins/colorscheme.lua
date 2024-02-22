return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
      require("catppuccin").setup({
        integrations = {
          notify = true
        }
      })
			vim.cmd.colorscheme("catppuccin-frappe")
		end,
	},
	-- {
	-- 	"folke/tokyonight.nvim",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	opts = {},
	-- 	config = function()
	-- 		vim.cmd.colorscheme("tokyonight-storm")
	-- 	end,
	-- },
}
