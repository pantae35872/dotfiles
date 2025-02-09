local plugins = {
  {
    "mfussenegger/nvim-lint",
    event = "VeryLazy",
    config = function ()
      require "custom.configs.lint"
    end
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    event = "VeryLazy",
    opts = function ()
      return require "custom.configs.null-ls"
    end
  },
  { 
    "lambdalisue/suda.vim", 
    lazy = false, 
  },
  {
    "glebzlat/arduino-nvim",
    config = {
      function() require("arduino-nvim").setup() end,
      filetype = "arduino",
    },
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "rust-analyzer",
        "eslint-lsp",
        "typescript-language-server",
        "arduino-language-server",
        "vue-language-server",
        "clangd",
        "clang-format"
      }
    }
  },
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = "cd app && yarn install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
      ft = { "markdown" },
  },
  {
    "github/copilot.vim",
    lazy = false,
  },
  {
    "alaviss/nim.nvim",
    ft = "nim"
  },
  {
  "pmizio/typescript-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
    ft = { 'typescript', 'typescriptreact', 'javascript', 'vue' },
    config = function ()
      local capabilities = require("plugins.configs.lspconfig").capabilities

      require('typescript-tools').setup {
        filetypes = {
          'javascript',
          'javascriptreact',
          'typescript',
          'typescriptreact',
          'vue',
        },
        settings = {
          tsserver_plugins = {
            '@vue/typescript-plugin',
          },
        },
        capabilities = capabilities,
      }
    end
  },
  "prabirshrestha/asyncomplete.vim",
  "nvim-treesitter/nvim-treesitter",
  {
    "neovim/nvim-lspconfig",
    config = function ()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function ()
      vim.g.rustfmt_autosave = 1
    end
  },
  {
    "simrat39/rust-tools.nvim",
    ft = "rust",
    dependencies = "neovim/nvim-lspconfig",
    opts = function ()
      return require "custom.configs.rust-tools"
    end,
    config = function (_, opts)
      require('rust-tools').setup(opts)
    end
  },
  {
    "mfussenegger/nvim-dap"
  }
}
return plugins
