local lsp = {
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      local on_attach = require("config.lsp").on_attach
      local capabilities = require("config.lsp").capabilities
      local util = require("lspconfig/util")

      lspconfig.volar.setup({
        on_attach = on_attach,
        capabilities = capabilities,
        root_dir = util.root_pattern("package.json"),
        settings = {
          vue = {
            complete = {
              casing = {
                props = 'autoCamel',
              },
            },
          },
        },
        filetypes = { 'css', 'vue', 'html' }
      })
      lspconfig.lua_ls.setup({
        on_attach = on_attach,
        capabilities = capabilities,
        settings = {
          Lua = {
            runtime = {
              version = 'LuaJIT', -- LuaJIT for Neovim
            },
            diagnostics = {
              globals = { 'vim' }, -- Recognize the `vim` global
            },
            workspace = {
              library = vim.api.nvim_get_runtime_file("", true), -- Make LSP aware of Neovim runtime files
              checkThirdParty = false,                           -- Avoid third-party library prompts
            },
            telemetry = {
              enable = false, -- Disable telemetry
            },
          },
        },
      })
    end,
  },
}

return lsp
