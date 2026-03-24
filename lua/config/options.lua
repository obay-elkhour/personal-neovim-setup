local opt = vim.opt

opt.number = true
opt.relativenumber = true

opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true

opt.smartindent = true
opt.wrap = true

opt.termguicolors = true
opt.scrolloff = 8
opt.signcolumn = "yes"

opt.updatetime = 50
opt.indentexpr = ""

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

