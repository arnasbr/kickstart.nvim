-- oil.nvim — edit your filesystem like a buffer
-- `nvim-web-devicons` is already installed by the core config (when a Nerd Font is enabled).
vim.pack.add { 'https://github.com/stevearc/oil.nvim' }

require('oil').setup {
  default_file_explorer = true,
  view_options = { show_hidden = true },
}

vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })
vim.keymap.set('n', '<leader>e', '<CMD>Oil<CR>', { desc = 'Open file [E]xplorer' })
