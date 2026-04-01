return {
  {
    "windwp/nvim-autopairs",
    event = {"BufReadPost", "BufNewFile"},

    config = function()
      local npairs = require("nvim-autopairs")
      npairs.setup()
    end,
  },
}
