return {
  { "windwp/nvim-autopairs", event = "InsertEnter", opts = {} },
  { "numToStr/Comment.nvim", opts = {} },
  { "mbbill/undotree" },
  { "ojroques/nvim-oscyank" },

  {
    'akinsho/toggleterm.nvim',
    version = "*",
    opts = {
      open_mapping = [[<A-s>]],
      direction = 'horizontal',
      size = 12,
      shade_terminals = false,
      highlights = {
        StatusLine = { guifg = "#89b4fa", guibg = "none" }, 
        StatusLineNC = { guifg = "#313244", guibg = "none" },
      },
    }
  },
}

