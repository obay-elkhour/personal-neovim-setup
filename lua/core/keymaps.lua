local keymap = vim.keymap.set

local function toggle_oil()
    if vim.bo.filetype == "oil" then
        vim.cmd("bd")
    else
        vim.cmd("Oil")
    end
end

-- Oil toggle (as requested)
vim.keymap.set("n", "<leader>e", function() local oil = require("oil") if vim.bo.filetype == "oil" then vim.cmd("bd") else oil.open(vim.fn.expand("%:p:h")) end end, { desc = "Toggle Oil" })

-- Undotree
keymap("n", "<leader>u", "<cmd>UndotreeToggle<cr>", { desc = "Toggle Undotree" })

-- LSP Mappings (Global)
keymap("n", "gd", vim.lsp.buf.definition)
keymap("n", "K", vim.lsp.buf.hover)
keymap("n", "gl", vim.diagnostic.open_float, { desc = "line diagnostics" })
keymap("n", "[d", vim.diagnostic.goto_prev, { desc = "prev diagnostic" })
keymap("n", "]d", vim.diagnostic.goto_next, { desc = "next diagnostic" })

keymap("n", "<leader><leader>", "zz")
keymap('n', '<leader>y', '<Plug>OSCYankOperator')
keymap('v', '<leader>y', '<Plug>OSCYankVisual')

keymap("n", "<Tab>", "<cmd>BufferLineCycleNext<cr>")
keymap("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<cr>")
keymap("n", "<leader>x", "<cmd>bdelete<cr>", { desc = "Close Buffer" })

keymap("v", "J", ":m '>+1<CR>gv=gv") -- Alt Up/Down in vscode
keymap("v", "K", ":m '<-2<CR>gv=gv")

keymap("n", "J", "mzJ`z")       -- Remap joining lines
keymap("n", "<C-d>", "<C-d>zz") -- Keep cursor in place while moving up/down page
keymap("n", "<C-u>", "<C-u>zz")
keymap("n", "n", "nzzzv")       -- center screen when looping search results
keymap("n", "N", "Nzzzv")
