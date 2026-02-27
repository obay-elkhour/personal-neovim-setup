return {
  {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v3.x",
    dependencies = {
      "neovim/nvim-lspconfig",
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
      local lsp_zero = require("lsp-zero")
      local cmp_nvim_lsp = require("cmp_nvim_lsp")

      lsp_zero.extend_lspconfig({
        capabilities = cmp_nvim_lsp.default_capabilities(),
      })

      lsp_zero.on_attach(function(_, bufnr)
        lsp_zero.default_keymaps({ buffer = bufnr })
      end)

      require("mason").setup()

      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "ts_ls",
          "pyright",
          "tailwindcss"
        },
        handlers = {
          lsp_zero.default_setup,
          tailwindcss = function()
            require("lspconfig").tailwindcss.setup({
              filetypes = {
                "javascriptreact",
                "typescriptreact",
              },
            })
          end,
        },
      })
    end,
  },
}

