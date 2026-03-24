return {
  {
    "NvChad/nvim-colorizer.lua",

    config = function()
      require("colorizer").setup({
        filetypes = { "*" },
        user_default_options = {
          RGB = true,
          RRGGBB = true,
          names = true,
          RRGGBBAA = true,
          AARRGGBB = true,
          css = true,
          css_fn = true,
        },
      })
    end,
  },
}
