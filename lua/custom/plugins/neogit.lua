-- neogit — a Magit-style git interface
-- plenary and telescope are already installed by the core config; diffview is not, so add it here.
vim.pack.add {
  'https://github.com/nvim-lua/plenary.nvim',
  'https://github.com/sindrets/diffview.nvim',
  'https://github.com/nvim-telescope/telescope.nvim',
  'https://github.com/NeogitOrg/neogit',
}

require('neogit').setup {}
