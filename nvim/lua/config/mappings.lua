local M = {}

M.default = function()
  vim.keymap.set({ "n", "v" }, "d", '"_d', { noremap = true })
  vim.keymap.set("n", "D", '"_D', { noremap = true })
  vim.keymap.set('n', '<A-,>', '<Cmd>bp<CR>', { noremap = true, silent = true })
  vim.keymap.set('n', '<A-.>', '<Cmd>bn<CR>', { noremap = true, silent = true })
  vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', { noremap = true })
  vim.keymap.set('i', '<A-f>', 'copilot#Accept("")', { noremap = true, silent = true, expr = true })
  vim.keymap.set('n', '<leader>h', '<CMD>noh<CR>', { noremap = true, silent = true });
  vim.g.copilot_no_tab_map = true
end

M.telescope = function()
  local builtin = require('telescope.builtin')
  local todo_comments = require("telescope").extensions["todo-comments"]

  vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
  vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
  vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
  vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
  vim.keymap.set('n', '<leader>ft', todo_comments.todo, { desc = 'Todo comments' })
end

M.nvim_tree = function()
  local api = require("nvim-tree.api")
  vim.keymap.set('n', '<C-n>', api.tree.toggle, { noremap = true, silent = true })
end

M.nvim_tree_buffer = function(bufnr)
  local api = require("nvim-tree.api")

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  -- default mappings
  api.config.mappings.default_on_attach(bufnr)

  -- custom mappings
  -- vim.keymap.set('n', '<C-t>', api.tree.change_root_to_parent,        opts('Up'))
  -- vim.keymap.set('n', '?',     api.tree.toggle_help,                  opts('Help'))
end

return M
