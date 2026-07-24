--plugins
require("plugins.tokyonight")
require("plugins.oil")
require("plugins.lualine")
require("plugins.mason")
require("plugins.treesitter")
require("plugins.lsp")
require("plugins.nvim-cmp")
require("plugins.alpha")
require("plugins.color")
require("plugins.dap")
require("plugins.telescope")

--plugin Update command
vim.api.nvim_create_user_command("PackUpdate", function()
  vim.pack.update()
end, {})

--settings
vim.opt.wrap = false
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2

vim.opt.winborder = "single"
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
vim.opt.scrolloff = 8

vim.o.cursorline = true
vim.o.splitright = true
vim.o.splitbelow = true
vim.o.undofile = true
vim.o.mouse = "a"
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.inccommand = "split"

--keybinds
local map = vim.keymap.set
vim.g.mapleader = " "

map("n", "<C-h>", ":wincmd h<CR>")
map("n", "<C-j>", ":wincmd j<CR>")
map("n", "<C-k>", ":wincmd k<CR>")
map("n", "<C-l>", ":wincmd l<CR>")

map({"n", "v", "x"}, "<leader>y", "\"+y")
map({"n", "v", "x"}, "<leader>p", "\"+p")
map("n", "<leader>q", ":q<CR>")

map('t', '<Esc><Esc>', '<C-\\><C-n>')

map("n", "<leader>e", ":Oil<CR>")

map('n', '<leader>ff', ':Telescope find_files<CR>', { desc = 'Telescope find files' })
map('n', '<leader>fg', ':Telescope live_grep<CR>', { desc = 'Telescope live grep' })
map('n', '<leader>fb', ':Telescope buffers<CR>', { desc = 'Telescope buffers' })
map('n', '<leader>fh', ':Telescope help_tags<CR>', { desc = 'Telescope help tags' })

map("n", "K", vim.lsp.buf.hover)
map("n", "<leader>gd", vim.lsp.buf.definition)
map("n", "<leader>gr", vim.lsp.buf.references)
map("n", "<leader>gi", vim.lsp.buf.implementation)

map({"n", "v", "x"}, "<leader>ca", vim.lsp.buf.code_action)
map("n", "<leader>rn", vim.lsp.buf.rename)
map("n", "<leader>ds", vim.diagnostic.open_float)

map("n", "<leader><esc>", ":noh<CR>")

map("n", "<leader>dc", ":DapContinue<CR>")
map("n", "<F5>", ":DapContinue<CR>")

map("n", "<leader>db", ":DapToggleBreakpoint<CR>")
map("n", "<F9>", ":DapToggleBreakpoint<CR>")

map("n", "<leader>do", ":DapStepOver<CR>")
map("n", "<F10>", ":DapStepOver<CR>")

map("n", "<leader>di", ":DapStepInt<CR>")
map("n", "<F11>", ":DapStepInt<CR>")
