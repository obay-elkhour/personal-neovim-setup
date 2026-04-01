return {
  {
    "echasnovski/mini.ai",
    version = "*",
    dependencies = "nvim-treesitter/nvim-treesitter",
    event = {"BufReadPost", "BufNewFile"},

    config = function()
      require("mini.ai").setup({
        n_lines = 500,  -- how many lines to search for text objects
      })
    end,
  },
}
