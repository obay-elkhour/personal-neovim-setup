return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavour = "mocha",
      transparent_background = true,
    },
    config = function(_, opts)
      require("catppuccin").setup(opts)
    end,
  },
  {
    "stevearc/oil.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("oil").setup({
        default_file_explorer = true,
        view_options = {
          show_hidden = false
        },
        float = {
          padding = 4,
          max_width = 81,
          max_height = 21
        }
      })
    end,
  },
{
    'brenoprata10/nvim-highlight-colors',
    config = function()
      require('nvim-highlight-colors').setup({})
    end
  },
  "folke/tokyonight.nvim",      -- classic dark
  "rebelot/kanagawa.nvim",      -- japanese palette
  "Mofiqul/dracula.nvim",       -- high contrast
  "ellisonleao/gruvbox.nvim",    -- earthy tones
  { 
    "EdenEast/nightfox.nvim",
    config = function() 
      require('nightfox').setup({
        options = {
          styles = {
            comments = "italic",
            keywords = "bold",
            types = "italic,bold",
          }
        }
      })
    end
  },      -- vibrant
  "luisiacc/gruvbox-baby",       -- fun variant
  "olimorris/onedarkpro.nvim",   -- many style variants
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("lualine").setup({
        options = {
          section_separators = {"", ""},
          component_separators = {"", ""},
          icons_enabled = true,
          globalstatus = true, -- full-width line across all windows
        },
        sections = {
          lualine_a = {"mode"},
          lualine_b = {"branch", "diff", "diagnostics"},
          lualine_c = {"filename"},
          lualine_x = {"encoding", "fileformat", "filetype"},
          lualine_y = {"progress"},
          lualine_z = {"location"}
        },
        inactive_sections = {
          lualine_a = {},
          lualine_b = {},
          lualine_c = {"filename"},
          lualine_x = {"location"},
          lualine_y = {},
          lualine_z = {}
        },
        tabline = {},
        extensions = {"nvim-tree", "toggleterm"},
      })
    end,
  },
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
      require("bufferline").setup({
        options = {
          mode = "buffers", -- shows buffers not tabs
          diagnostics = "nvim_lsp",
          show_buffer_close_icons = true,
          show_close_icon = false,
          separator_style = "thin", -- or "thin" or "padded_slant"
          offsets = {
            {
              filetype = "oil",
              text = "File Explorer",
              highlight = "Directory",
              separator = true,
            },
          },
        },
      })
    end,
  },
  {
    "xiyaowong/transparent.nvim",
    config = function()
      require("transparent").setup()
    end,
  }
}
