---@type ChadrcConfig
local M = {}

M.ui = { theme = 'catppuccin' }
M.plugins = 'custom.plugins'

require("custom.configs.key-maps")
require("custom.init")
return M
