-- tokyonight — colorscheme with transparency.
-- The core config already installs tokyonight and sets the colorscheme; this custom
-- file loads last, so re-running setup here enables transparency and re-applies it.
vim.pack.add { 'https://github.com/folke/tokyonight.nvim' }

---@diagnostic disable-next-line: missing-fields
require('tokyonight').setup {
  transparent = true,
  styles = {
    sidebars = 'transparent',
    floats = 'transparent',
    comments = { italic = false },
  },
}
vim.cmd.colorscheme 'tokyonight-night'
