vim.wo.relativenumber = true
vim.wo.number = true

require("config.lazy")
require("config.mappings").default()

vim.g.copilot_no_tab_map = true
vim.opt.clipboard = "unnamedplus"
vim.opt.undofile = true
vim.cmd.colorscheme "catppuccin-mocha"
vim.g.suda_smart_edit = 1

vim.api.nvim_create_augroup('AutoFormatting', {})
vim.api.nvim_create_autocmd('BufWritePre', {
  pattern = '*.lua',
  group = 'AutoFormatting',
  callback = function()
    vim.lsp.buf.format()
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "lua",
  callback = function()
    vim.bo.tabstop = 2      -- Number of visual spaces per tab
    vim.bo.shiftwidth = 2   -- Number of spaces for each indent
    vim.bo.expandtab = true -- Use spaces instead of tabs
  end
})
