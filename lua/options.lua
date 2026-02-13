local o = vim.opt
local cmd = vim.cmd

o.number = true
o.relativenumber = true

o.tabstop = 2
o.softtabstop = 2
o.shiftwidth = 2
o.smarttab = true

o.smartindent = true
o.autoindent = true
o.expandtab = true

o.termguicolors = true

o.ignorecase = true
o.smartcase = true

o.clipboard:append("unnamedplus")

o.undofile = true
o.undodir = vim.fn.stdpath("data") .. "/undo"

o.scrolloff = 8

cmd("color retrobox") -- a built in gruvbox like theme
cmd("syntax on")
cmd("filetype plugin indent on")
