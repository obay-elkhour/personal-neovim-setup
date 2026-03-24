return {
  {
    "stevearc/oil.nvim",

    config = function()
      require("oil").setup()

      -- smart toggle
      vim.keymap.set("n", "<leader>e", function()
        local oil = require("oil")
        if vim.bo.filetype == "oil" then
          vim.cmd("bd")
        else
          oil.open(vim.fn.expand("%:p:h"))
        end
      end, { desc = "Toggle Oil" })
    end,
  },
}
