vim.pack.add({
	{
		src = "https://github.com/nvim-lualine/lualine.nvim"
	},
})


require("lualine").setup({
	options = {
		theme = 'tokyonight',
			component_separators = { left = '', right = ''},
			section_separators = {left = '', right = ''},
	}
})
