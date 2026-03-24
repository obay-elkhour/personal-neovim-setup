return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "hrsh7th/cmp-nvim-lsp",
    },

    config = function()
      require("mason").setup()

      require("mason-lspconfig").setup({
        ensure_installed = {
          "html",
          "cssls",
          "ts_ls",
          "pyright",
        },
      })

      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      local on_attach = function(_, bufnr)
        local opts = { buffer = bufnr }

        vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
        vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
        vim.keymap.set("n", "gl", vim.diagnostic.open_float, { desc = "line diagnostics" })
        vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
        vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
        vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
      end

      -- ✅ NEW API
      local servers = {
        html = {},
        cssls = {},
        ts_ls = {},
        pyright = {},
        nil_ls = {},
      }

      for name, config in pairs(servers) do
        vim.lsp.config(name, {
          capabilities = capabilities,
          on_attach = on_attach,
          autostart = true, -- manual only
          unpack(config),
        })
      end

      -- enable manually per filetype
      vim.api.nvim_create_autocmd("FileType", {
        callback = function(args)
          local ft = args.match

          local ft_map = {
            html = "html",
            css = "cssls",
            javascript = "ts_ls",
            typescript = "ts_ls",
            python = "pyright",
            nix = "nil_ls",
            lua = "lua_ls"
          }

          local server = ft_map[ft]

          if server then
            vim.keymap.set("n", "<leader>ls", function()
              vim.lsp.enable(server)
            end, { buffer = args.buf, desc = "Start LSP" })
          end
        end,
      })
    end,
  },
}
