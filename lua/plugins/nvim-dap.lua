return {
	"mfussenegger/nvim-dap",
	config = function()
		local dap = require("dap")

		local mason_base_path = vim.fn.stdpath("data") .. "/mason/packages/"

		dap.adapters.codelldb = {
			type = "executable",
			command = mason_base_path .. "codelldb/codelldb", 
		}

		dap.adapters.netcoredbg = {
			type = "executable",
			command = mason_base_path .. "netcoredbg/netcoredbg",
			args = { "--interpreter=vscode" },
		}
		dap.adapters.coreclr = dap.adapters.netcoredbg

		dap.configurations.cpp = {
			{
				name = "Launch file",
				type = "codelldb",
				request = "launch",
				program = function()
					return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
				end,
				cwd = '${workspaceFolder}',
				stopOnEntry = false,
			},
		}
		dap.configurations.c = dap.configurations.cpp
    dap.configurations.rust = dap.configurations.cpp

		dap.configurations.cs = {
			{
				type = "coreclr",
				name = "Launch - netcoredbg",
				request = "launch",
				program = function()
					return vim.fn.input('Path to dll: ', vim.fn.getcwd() .. '/bin/Debug/', 'file')
				end,
				console = "integratedTerminal",
			},
		}

	end,
}
