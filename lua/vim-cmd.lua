local map = vim.keymap.set
vim.g.mapleader = " "

vim.opt.winborder = "rounded"
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.wrap = false
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"

vim.opt.scrolloff = 8
vim.o.cursorline = true
vim.o.splitright = true
vim.o.splitbelow = true
vim.o.undofile = true
vim.o.mouse = 'a'
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.inccommand = 'split'

map('n', '<C-h>', ':wincmd h<CR>')
map('n', '<C-j>', ':wincmd j<CR>')
map('n', '<C-k>', ':wincmd k<CR>')
map('n', '<C-l>', ':wincmd l<CR>')

map("n", "<C-h>", ":NvimTmuxNavigateLeft<CR>", {})
map("n", "<C-j>", ":NvimTmuxNavigateDown<CR>", {})
map("n", "<C-k>", ":NvimTmuxNavigateUp<CR>", {})
map("n", "<C-l>", ":NvimTmuxNavigateRight<CR>", {})

map({'n', 'v', 'x'}, '<leader>y', '"+y')
map({'n', 'v', 'x'}, '<leader>p', '"+p')
map ('n', '<leader>q', ':q<CR>')

map('t', '<Esc><Esc>', '<C-\\><C-n>')

map('n', '<leader>e', ":Oil<CR>")

map('n', '<leader>ff', ':Telescope find_files<CR>', { desc = 'Telescope find files' })
map('n', '<leader>fg', ':Telescope live_grep<CR>', { desc = 'Telescope live grep' })
map('n', '<leader>fb', ':Telescope buffers<CR>', { desc = 'Telescope buffers' })
map('n', '<leader>fh', ':Telescope help_tags<CR>', { desc = 'Telescope help tags' })

map("n", "K", vim.lsp.buf.hover)
map("n", "<leader>gd", vim.lsp.buf.definition)
map("n", "<leader>gr", vim.lsp.buf.references)
map("n", "<leader>gi", vim.lsp.buf.implementation)
map({ "n", "v", "x" }, "<leader>ca", vim.lsp.buf.code_action)
map("n", "<leader>rn", vim.lsp.buf.rename, { noremap=true, silent=true })
map("n", "<leader>ds", vim.diagnostic.open_float)

map("n", "<leader>gf", vim.lsp.buf.format)

map('n', '<Leader><Esc>', ':noh<CR>', { noremap = true, silent = true })

vim.lsp.enable({"lua_ls", "clangd", "omnisharp", "glsl_analyzer" , "cmake", "rust_analyzer"})

vim.api.nvim_create_autocmd("BufWritePre", {
  callback = function()
    vim.lsp.buf.format()
  end,
})


map("n", "<leader>dc", ":DapContinue<CR>")
map("n", "<F5>",":DapContinue<CR>")

map("n", "<F9>", ":DapToggleBreakpoint<CR>")
map("n", "<leader>db", ":DapToggleBreakpoint<CR>")

map("n", "<F10>", ":DapStepOver<CR>")
map("n", "<leader>do", ":DapStepOver<CR>")

map("n", "<F11>", ":DapStepInt<CR>")
map("n", "<leader>di", ":DapStepInt<CR>")

map("n", "<F12>", ":DapStepOut<CR>")
--map("n", "<F12>", ":DapStepOut<CR>")
