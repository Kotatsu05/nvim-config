return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    config = function()
      require("neo-tree").setup({
        filesystem = {
          filtered_items = {
            visible = true, -- Show hidden files and directories
            hide_dotfiles = false, -- Set to false to show dotfiles (hidden files)
            hide_gitignored = false, -- Set to false to show gitignored files
          },
        },
      })
      vim.keymap.set('n','<C-n>', ':Neotree filesystem toggle position=right<CR>', {})
    end
}
