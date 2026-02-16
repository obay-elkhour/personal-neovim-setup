local opt = vim.opt
local g = vim.g

-- =====================================================
-- Leader
-- =====================================================
g.mapleader = " "
g.maplocalleader = " "

-- =====================================================
-- UI
-- =====================================================
opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.signcolumn = "yes"
opt.termguicolors = true
opt.wrap = false
opt.scrolloff = 8
opt.sidescrolloff = 8
opt.updatetime = 200
opt.timeoutlen = 400

-- =====================================================
-- Indentation
-- =====================================================
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.smartindent = true
opt.autoindent = true

-- =====================================================
-- Search
-- =====================================================
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false
opt.incsearch = true

-- =====================================================
-- Clipboard
-- =====================================================
opt.clipboard = "unnamedplus"

-- =====================================================
-- Splits
-- =====================================================
opt.splitright = true
opt.splitbelow = true

-- =====================================================
-- Backup / Swap
-- =====================================================
opt.swapfile = false
opt.backup = false
opt.writebackup = false

-- =====================================================
-- Persistent Undo (IMPORTANT)
-- =====================================================
local undodir = vim.fn.stdpath("state") .. "/undo"

if not vim.loop.fs_stat(undodir) then
  vim.fn.mkdir(undodir, "p")
end

opt.undodir = undodir
opt.undofile = true

-- =====================================================
-- Better completion experience
-- =====================================================
opt.completeopt = { "menu", "menuone", "noselect" }

-- =====================================================
-- Mouse
-- =====================================================
opt.mouse = "a"

