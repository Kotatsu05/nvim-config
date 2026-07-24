vim.pack.add({
	{
		src = "https://github.com/nvim-telescope/telescope.nvim"
	},
	{
		src = "https://github.com/nvim-lua/plenary.nvim"
	},
	{
		src = "https://github.com/nvim-telescope/telescope-ui-select.nvim",
	},
})

--local data = assert(vim.fn.stdpath "data")

require("telescope").setup({
	pickers = {
		find_files = {
			hidden = true,
			file_ignore_pattern = {".git/"}
		},
	},

	defaults = {
			layout_strategy = "horizontal",
			layout_config = {
				horizontal = {
					prompt_position = "top",
					preview_width = 0.55,
					results_width = 0.45,
					width = 0.90,
					height = 0.85,
					preview_cutoff = 120,
				},
				vertical = {
					mirror = false,
				},
			},
			sorting_strategy = "ascending",
			winblend = 10,
			border = true,
			borderchars = {
				prompt = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
				results = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
				preview = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
			},
		},

	extensions = {
		["ui-select"] = require("telescope.themes").get_dropdown({}),
	},
})

require("telescope").load_extension("ui-select")
