local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Move to previous/next
map('n', '<A-,>', '<Cmd>bp<CR>', opts)
map('n', '<A-.>', '<Cmd>bn<CR>', opts)
-- Other:
-- :BarbarEnable - enables barbar (enabled by default)
-- :BarbarDisable - very bad command, should never be used

map('t', '<Esc>', '<C-\\><C-n>', {noremap =true})

-- vim.keymap.set('n', '<leader>c', require('osc52').copy_operator, {expr = true})
-- vim.keymap.set('n', '<leader>cc', '<leader>c_', {remap = true})
-- vim.keymap.set('v', '<leader>c', require('osc52').copy_visual)

