vim.pack.add({
	{
		src = "https://github.com/williamboman/mason.nvim"
	},
})


require("mason").setup({
	registers = {
		"github:mason-org/mason-registry",
	},
})
