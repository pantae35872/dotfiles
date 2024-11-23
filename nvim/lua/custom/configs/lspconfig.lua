local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities
local lspconfig = require("lspconfig")
local util = require "lspconfig/util"

lspconfig.clangd.setup {
  on_attach = function(client, bufnr)
    client.server_capabilities.signatureHelpProvider = false
    on_attach(client, bufnr)
  end,
  capabilities = capabilities
}

lspconfig.volar.setup {
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
}

lspconfig.arduino_language_server.setup {
  root_dir = util.root_pattern("sketch.yaml"),
  filetypes = { 'arduino' }
}

lspconfig.nim_langserver.setup {
  settings = {
    nim = {
      nimsuggestPath = "~/.nimble/bin/nimsuggest"
    }
  }
}

lspconfig.zls.setup {
  cmd = { '/usr/bin/zls' },
  settings = {
    zls = {
      -- omit the following line if `zig` is in your PATH
      zig_exe_path = '/usr/bin/zig',
    }
  }
}

require("arduino-nvim").setup {
  default_fqbn = "arduino:avr:uno",
  clangd = "/usr/bin/clangd", -- path to a clangd executable
  arduino = "/usr/bin/arduino-cli", -- path to a arduino-cli executable
  extra_args = {}, -- command line args to arduino lsp
  root_dir = vim.fn.getcwd(),
  capabilities = capabilities,
  filetypes = {"arduino"},
  callbacks = {
    on_attach = on_attach
  }
}
