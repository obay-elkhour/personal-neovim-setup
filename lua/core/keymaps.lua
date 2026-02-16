
local keymap = vim.keymap.set

vim.g.mapleader = " "

keymap("n", "<leader>e", "<cmd>NvimTreeToggle<cr>")
keymap("v", "<leader>y", '"+y')

keymap("v", "J", ":m '>+1<CR>gv=gv") -- Alt Up/Down in vscode
keymap("v", "K", ":m '<-2<CR>gv=gv")

keymap("n", "J", "mzJ`z")       -- Remap joining lines
keymap("n", "<C-d>", "<C-d>zz") -- Keep cursor in place while moving up/down page
keymap("n", "<C-u>", "<C-u>zz")
keymap("n", "n", "nzzzv")       -- center screen when looping search results
keymap("n", "N", "Nzzzv")

keymap("x", "<leader>p", [["_dP]])
keymap({ "n", "v" }, "<leader>d", [["_d]])


keymap("i", "jj", "<Esc>")
keymap("i", "kk", "<Esc>")

keymap("n", "<C-j>", "<cmd>cnext<CR>zz")
keymap("n", "<C-k>", "<cmd>cprev<CR>zz")

keymap("n", "Q", "<nop>")

keymap("n", "<leader>k", "<cmd>lnext<CR>zz")
keymap("n", "<leader>j", "<cmd>lprev<CR>zz")

keymap("n", "<leader>c", "<cmd>!chmod +x %<CR>", { silent = true })

keymap("n", "<leader>cl", ":cclose<CR>", { silent = true })
keymap("n", "<leader>co", ":copen<CR>", { silent = true })
keymap("n", "<leader>cn", ":cnext<CR>zz")
keymap("n", "<leader>cp", ":cprev<CR>zz")
keymap("n", "<leader>li", ":checkhealth vim.lsp<CR>", { desc = "LSP Info" })

keymap("n", "<leader><leader>", "zz")
keymap('n', '<leader>y', '<Plug>OSCYankOperator')
keymap('v', '<leader>y', '<Plug>OSCYankVisual')

keymap("n", "<leader>tt", "<cmd>tabnew<cr>")
keymap("n", "<leader>ll", "<cmd>tabnext<cr>")
keymap("n", "<leader>x", "<cmd>tabclose<cr>")
keymap("n", "<leader>rr", "<cmd>tabprevious<cr>")

keymap("n", "<Tab>", "<cmd>tabnext<cr>")
keymap("n", "<leader>u", "<cmd>UndotreeToggle<cr>")

-- Telescope
