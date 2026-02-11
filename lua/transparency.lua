local groups = {
  "Normal",
  "NormalNC",
  "EndOfBuffer",
  "SignColumn",
  "FoldColumn",
  "LineNr",
  "CursorLineNr",
  "StatusLine",
  "StatusLineNC",
  "VertSplit",
  "WinSeparator",
  "NvimTreeNormal",
  "NvimTreeNormalNC",
  "CursorLine"
}

for _, group in ipairs(groups) do
  vim.api.nvim_set_hl(0, group, { bg = "none" })
end

