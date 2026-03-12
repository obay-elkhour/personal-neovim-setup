return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.config").setup({
        ensure_installed = { "lua", "vim", "javascript", "typescript", "css", "html", "python" },
        highlight = { enable = true },
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      { "williamboman/mason.nvim", config = true },
      "williamboman/mason-lspconfig.nvim",
      "hrsh7th/cmp-nvim-lsp",
    },
    event = { "BufReadPost", "BufNewFile" },
    config = function()
      require("mason").setup()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "ts_ls", "pyright", "tailwindcss" },
      })

      -- Get capabilities for nvim-cmp
      local caps = require('cmp_nvim_lsp').default_capabilities()

      -- Neovim 0.11+ Native Setup: 
      -- This replaces lspconfig[server].setup({ capabilities = caps })
      local servers = { "lua_ls", "ts_ls", "pyright", "tailwindcss", "nil_ls" }
      for _, server in ipairs(servers) do
        vim.lsp.config(server, {
          install = true,
          options = {
            capabilities = caps,
          },
        })
        vim.lsp.enable(server)
      end
    end
  },
}

