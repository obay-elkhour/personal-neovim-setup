return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    config = function()
      require("nvim-treesitter.config").setup({
        highlight = { enable = true },
        indent = { enable = true },
        ensure_installed = {
          "lua",
          "javascript",
          "typescript",
          "python",
          "html",
          "css",
        },
      })
    end,
  },
}

