return {
  "folke/flash.nvim",

  config = function()
    require("flash").setup({})

    -- jump (like improved / search)
    vim.keymap.set({ "n", "x", "o" }, "s", function()
      require("flash").jump()
    end, { desc = "Flash Jump" })

    -- treesitter jump
    vim.keymap.set({ "n", "x", "o" }, "S", function()
      require("flash").treesitter()
    end, { desc = "Flash Treesitter" })

    -- remote (operate at distance)
    vim.keymap.set("o", "r", function()
      require("flash").remote()
    end)

    -- treesitter search
    vim.keymap.set({ "o", "x" }, "R", function()
      require("flash").treesitter_search()
    end)

    -- toggle search highlight
    vim.keymap.set("c", "<c-s>", function()
      require("flash").toggle()
    end)
  end,
}


