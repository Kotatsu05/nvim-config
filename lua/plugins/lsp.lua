vim.pack.add({
	{
		src = "https://github.com/williamboman/mason.nvim"
	},
	{
		src = "https://github.com/neovim/nvim-lspconfig"
	},
	{
		src = "https://github.com/mason-org/mason-lspconfig.nvim"
	},
})


require("mason-lspconfig").setup({
	automatic_enable = {
		"clangd"
	}
})
