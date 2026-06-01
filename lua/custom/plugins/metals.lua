-- nvim-metals — Scala LSP support
-- plenary is already installed by the core config. Metals attaches per-filetype
-- (scala/sbt/java) via the autocmd below rather than at startup.
vim.pack.add { 'https://github.com/scalameta/nvim-metals' }

local metals_config = require('metals').bare_config()
metals_config.settings = {
  showImplicitArguments = true,
  showImplicitConversionsAndClasses = true,
  showInferredType = true,
  superMethodLensesEnabled = true,
}

local nvim_metals_group = vim.api.nvim_create_augroup('nvim-metals', { clear = true })
vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'scala', 'sbt', 'java' },
  callback = function() require('metals').initialize_or_attach(metals_config) end,
  group = nvim_metals_group,
})
