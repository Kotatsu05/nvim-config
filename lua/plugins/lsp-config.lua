return {
	"mason-org/mason-lspconfig.nvim",
  opts = {},
  dependencies = {
  	"mason-org/mason.nvim",
    "neovim/nvim-lspconfig",
    config = function()
			require("mason-lspconfig").setup {
				automatic_enable = {
        "lua_ls",
        "clangd",
				"charp_ls"
				}
			}	
		end,
  },
	{
		"neovim/nvim-lspconfig",
		dependencies = { "hrsh7th/cmp-nvim-lsp"},
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
		end,
	}
}
