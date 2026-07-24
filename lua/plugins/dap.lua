vim.pack.add({
	{
		src = "https://github.com/mfussenegger/nvim-dap"
	},
	{
		src = "https://github.com/rcarriga/nvim-dap-ui"
	},
	{
		src = "https://github.com/nvim-neotest/nvim-nio"
	},
})

local dap = require("dap")
local mason_base_path = vim.fn.stdpath("data") .. "/mason/packages/"

dap.adapters.codelldb = {
	type = "executable",
	command = mason_base_path .. "codelldb/codelldb",
}

dap.configurations.cpp = {
	{
		name = "Launch file",
		type = "codelldb",
		request = "launch",
		program = function()
			return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
		end,
		cwd = "${workspaceFolder}",
		stopOnEntry = false,
	},
}

dap.configurations.c = dap.configurations.cpp

local dapui = require("dapui")
dap.listeners.before.attach.dapui_config = function()
	dapui.open()
end
dap.listeners.before.launch.dapui_config = function()
	dapui.open()
end
dap.listeners.before.event_terminated.dapui_config = function()
	dapui.close()
end
dap.listeners.before.event_exited.dapui_config = function()
	dapui.close()
end
