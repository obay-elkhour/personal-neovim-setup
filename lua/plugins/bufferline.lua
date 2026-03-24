return {
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
}
