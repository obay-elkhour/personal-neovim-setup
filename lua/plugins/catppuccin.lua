return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    local function get_wallust_colors()
      local path = vim.fn.expand("~/.config/nvim/colors.lua")
      if vim.fn.filereadable(path) == 1 then
        return dofile(path)
      end
      return {}
    end

    require("catppuccin").setup({
      color_overrides = {
        all = get_wallust_colors(), -- This applies wallust colors to all flavors
      },
      transparent_background = true, -- Optional: helps blend with your terminal
    })

    vim.cmd.colorscheme("catppuccin")  end,
}
