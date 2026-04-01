return{
  "akinsho/toggleterm.nvim",
  version = "*",
  opts = {
    size = 18,
    direction = "horizontal",
    start_in_insert = true,
    close_on_exit = false,
  },
  config = function(_, opts)
    require("toggleterm").setup(opts)

    local Terminal = require("toggleterm.terminal").Terminal

    -- Create ONE persistent terminal
    local horizontal = Terminal:new({
      direction = "horizontal",
      hidden = true,
    })

    vim.keymap.set({ "n", "t" }, "<A-s>", function()
      horizontal:toggle()
    end, { desc = "Toggle horizontal terminal" })
  end,
}
