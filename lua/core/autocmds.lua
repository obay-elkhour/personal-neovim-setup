local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

-- Highlight on yank
augroup("YankHighlight", { clear = true })
autocmd("TextYankPost", {
  group = "YankHighlight",
  callback = function()
    vim.highlight.on_yank({ higroup = "IncSearch", timeout = 300 })
  end,
})

-- Force Transparency (لضمان شفافية الخلفية في كل الظروف)
augroup("TransparentEditor", { clear = true })
autocmd({ "ColorScheme", "VimEnter" }, {
  group = "TransparentEditor",
  callback = function()
    local highlights = {
      "Normal", "NormalNC", "LineNr", "Folded",
      "NonText", "SpecialKey", "VertSplit",
      "SignColumn", "EndOfBuffer", "NormalFloat",
      "FloatBorder", "Pmenu", "PmenuSel"
    }
    for _, group in ipairs(highlights) do
      vim.api.nvim_set_hl(0, group, { bg = "none", ctermbg = "none" })
    end
  end,
})

augroup("TerminalSeparator", { clear = true })
autocmd({ "ColorScheme", "VimEnter" }, {
    group = "TerminalSeparator",
    callback = function()
        vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#89b4fa", bg = "none" })
        vim.opt.fillchars:append({ horiz = '━', horizup = '┻', horizdown = '┳', vert = '┃', vertleft = '┫', vertright = '┣', verthoriz = '╋' })
    end,
})

