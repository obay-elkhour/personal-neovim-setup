local keymap = vim.keymap.set

vim.g.mapleader = " "

-- better navigation
keymap("v", "J", ":m '>+1<CR>gv=gv") -- Alt Up/Down in vscode
keymap("v", "K", ":m '<-2<CR>gv=gv")

keymap("n", "J", "mzJ`z")       -- Remap joining lines
keymap("n", "<C-d>", "<C-d>zz") -- Keep cursor in place while moving up/down page
keymap("n", "<C-u>", "<C-u>zz")
keymap("n", "n", "nzzzv")       -- center screen when looping search results
keymap("n", "N", "Nzzzv")

-- clear search
keymap("n", "<leader>h", "<cmd>nohlsearch<CR>")

-- bufferline keymaps
keymap("n", "<Tab>", "<cmd>bnext<cr>")
keymap("n", "<S-Tab>", "<cmd>bprevious<cr>")
keymap("n", "<leader>x", "<cmd>bdelete<cr>")

-- copy to clipboard
keymap("v", "<leader>y", '"+y')

-- force ( h j k l ) movements
keymap({ "n", "v" }, "<Left>", "<cmd>echo 'use h key'<cr>")
keymap({ "n", "v" }, "<Right>", "<cmd>echo 'use l key'<cr>")
keymap({ "n", "v" }, "<Up>", "<cmd>echo 'use k key'<cr>")
keymap({ "n", "v" }, "<Down>", "<cmd>echo 'use j key'<cr>")

-- undotree toggle
vim.keymap.set("n", "<leader>u", "<cmd>UndotreeToggle<cr>")
