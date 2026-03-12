return {
  { 
    "catppuccin/nvim", 
    name = "catppuccin", 
    priority = 1000,
    opts = { transparent_background = true },
    config = function(_, opts)
      require("catppuccin").setup(opts)
      vim.cmd.colorscheme "catppuccin"
    end
  },
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
      require("bufferline").setup({
        options = {
          mode = "buffers",
          separator_style = "thin", 
          show_buffer_close_icons = false,
          show_close_icon = false,
        },
        highlights = {
          fill = { bg = "none" }, 
          background = { bg = "none" }, 
          tab = { bg = "none" },
          buffer_visible = { bg = "none" },
          buffer_selected = { bg = "none", bold = true, italic = false }, -- التاب النشط

          separator = { fg = "#313244", bg = "none" },
          separator_selected = { fg = "#313244", bg = "none" },
          separator_visible = { fg = "#313244", bg = "none" },

          modified = { bg = "none" },
          modified_visible = { bg = "none" },
          modified_selected = { bg = "none" },
          duplicate_selected = { bg = "none" },
          duplicate_visible = { bg = "none" },
          duplicate = { bg = "none" },
          pick_selected = { bg = "none" },
          pick_visible = { bg = "none" },
          pick = { bg = "none" },
        }
      })
    end
  },
  { "stevearc/oil.nvim", opts = {} },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("lualine").setup({
        options = {
          theme = "catppuccin",
          component_separators = { left = "", right = "" },
          section_separators = { left = "", right = "" },
          globalstatus = true, 
          disabled_filetypes = { statusline = { "oil" } },
        },
        sections = {
          lualine_a = { { "mode", fmt = function(str) return str:sub(1,1) end } },
          lualine_b = { "branch" },
          lualine_c = { { "filename", path = 0 } }, 
          lualine_x = { "diagnostics" },
          lualine_y = { "filetype" },
          lualine_z = { "location" },
        },         
      })
    end,
  },
  {
    "NvChad/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup({
        "*", -- enable for all filetypes
      }, {
        RGB = true,
        RRGGBB = true,
        names = false,
        RRGGBBAA = true,
        rgb_fn = true,
        hsl_fn = true,
        css = true,
        css_fn = true,
      })
    end,
  }
}

