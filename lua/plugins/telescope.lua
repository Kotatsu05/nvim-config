return {
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
    dependencies = { 'nvim-lua/plenary.nvim' },
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
			local data = assert(vim.fn.stdpath "data") --[[@as string]]

      require("telescope").setup({
				pickers = {
					find_files = {
						hidden = true,
						file_ignore_patterns = {".git/"}
					},
				},
        extensions = {
					warp_results = true,
					fzf = {},
					history = {
						path = vim.fs.joinpath(data, "telescope_history.sqlite3"),
						limit = 100,
					},
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {
            }
          }
        },
				defaults = {
					layout_strategy = 'horizontal',
					layout_config = {
						horizontal = {
							prompt_position = 'top',
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
				},
      })
      require("telescope").load_extension("ui-select")
    end
  },
}
