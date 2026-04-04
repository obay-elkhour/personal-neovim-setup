-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = "python",
--   callback = function()
--     vim.opt_local.indentexpr = ""
--   end,
-- })

local cmds = require("config.cmds")

vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank()
  end,
})

vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = function()
    local groups = {
      "Normal",
      "NormalNC",
      "EndOfBuffer",
      "SignColumn",
      "FoldColumn",
      "LineNr",
      "CursorLine",
      "CursorLineNr",
      "VertSplit",
      "WinSeparator",
      "NvimTreeNormal",
      "NvimTreeNormalNC",
      -- bufferline only
      "BufferLineFill",
      "BufferLineBackground",
      "BufferLineBufferVisible",
      "BufferLineBufferSelected",
      "BufferLineSeparator",
      "BufferLineSeparatorVisible",
      "BufferLineSeparatorSelected",
      "BufferLineIndicatorSelected",
      "BufferLineTab",
      "BufferLineTabSelected",
      "BufferLineTabClose",
      "BufferLineCloseButton",
      "BufferLineCloseButtonVisible",
      "BufferLineCloseButtonSelected",
      "BufferLineModifiedSelected",
      "BufferLineModifiedVisible"
    }

    for _, group in ipairs(groups) do
      vim.api.nvim_set_hl(0, group, { bg = "none" })
    end
  end,
})

vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = vim.fn.expand("~/.config/nvim/colors.lua"),
  callback = function()
    cmds.reload_wallust_colors()
  end,
})
