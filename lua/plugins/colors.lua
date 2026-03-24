return {
  {
    "folke/tokyonight.nvim",
    -- priority = 1000,
    -- config = function()
    --   vim.cmd.colorscheme("tokyonight")
    -- end,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        transparent_background=true,
        integrations = {
          cmp = true,
          gitsigns = true,
          oil = true,
          notify = true
        }
      })
      vim.cmd.colorscheme("catppuccin")
    end
  }
}
