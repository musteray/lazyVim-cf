return {
	"lewis6991/gitsigns.nvim",
	event = "VeryLazy",
	opts = {
		signs = {
			add = { text = "▎" },
			change = { text = "▎" },
			delete = { text = "" },
			topdelete = { text = "" },
			changedelete = { text = "▎" },
			untracked = { text = "▎" },
		},
		on_attach = function(buffer)
			local gs = package.loaded.gitsigns

			local function map(mode, l, r, desc)
				vim.keymap.set(mode, l, r, { buffer = buffer, desc = desc })
			end

      -- stylua: ignore start
      map("n", "]h", gs.next_hunk, "Gitsign - Next Hunk")
      map("n", "[h", gs.prev_hunk, "Gitsign - Prev Hunk")
      map({ "n", "v" }, "<leader>ghs", ":Gitsigns stage_hunk<CR>", "Gitsign - Stage Hunk")
      map({ "n", "v" }, "<leader>ghr", ":Gitsigns reset_hunk<CR>", "Gitsign - Reset Hunk")
      map("n", "<leader>ghS", gs.stage_buffer, "Gitsign - Stage Buffer")
      map("n", "<leader>ghu", gs.undo_stage_hunk, "Gitsign - Undo Stage Hunk")
      map("n", "<leader>ghR", gs.reset_buffer, "Gitsign - Reset Buffer")
      map("n", "<leader>ghp", gs.preview_hunk_inline, "Gitsign - Preview Hunk Inline")
      map("n", "<leader>ghb", function() gs.blame_line({ full = true }) end, "Gitsign - Blame Line")
      map("n", "<leader>ghd", gs.diffthis, "Gitsign - Diff This")
      map("n", "<leader>ghD", function() gs.diffthis("~") end, "Gitsign - Diff This ~")
      map({ "o", "x" }, "ih", ":<C-U>Gitsigns select_hunk<CR>", "Gitsign - Select Hunk")
		end,
	},
}
