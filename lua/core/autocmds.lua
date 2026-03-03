
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

    vim.cmd [[
      highlight! link IndentBlanklineChar LineNr
      highlight! link IndentBlanklineContextChar CursorLineNr
    ]]

    vim.api.nvim_set_hl(0, "IblIndent", { fg = "#3b4261" }) 
    vim.api.nvim_set_hl(0, "IblWhitespace", { fg = "#3b4261" })
    vim.api.nvim_set_hl(0, "IblScope", { fg = "#3b4261" })
  end,
})
