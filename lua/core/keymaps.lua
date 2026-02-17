
local keymap = vim.keymap.set

vim.g.mapleader = " "

keymap("n", "<leader>e", "<cmd>NvimTreeToggle<cr>")

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
keymap("i", "<C-Tab>", "<cmd>tabnext<cr>")
keymap("n", "<leader>u", "<cmd>UndotreeToggle<cr>")

-- Telescope
-- =================== FILE SEARCH ===================
keymap("n", "<leader>ff", function()
  require("telescope.builtin").find_files()
end, { desc = "Find Files" })

keymap("n", "<leader>fa", function()
  require("telescope.builtin").find_files({ hidden = true, no_ignore = true })
end, { desc = "Find All Files (hidden + noignore)" })

keymap("n", "<leader>fr", function()
  require("telescope.builtin").oldfiles()
end, { desc = "Recent Files" })

keymap("n", "<leader>/", function()
  require("telescope.builtin").current_buffer_fuzzy_find()
end, { desc = "Search in Current Buffer" })

-- =================== TEXT SEARCH ===================
keymap("n", "<leader>fg", function()
  require("telescope.builtin").live_grep()
end, { desc = "Live Grep" })

keymap("n", "<leader>fw", function()
  require("telescope.builtin").grep_string()
end, { desc = "Search Word Under Cursor" })

-- =================== LSP ===================
keymap("n", "gd", function()
  require("telescope.builtin").lsp_definitions()
end, { desc = "LSP Definitions" })

keymap("n", "gr", function()
  require("telescope.builtin").lsp_references()
end, { desc = "LSP References" })

keymap("n", "gi", function()
  require("telescope.builtin").lsp_implementations()
end, { desc = "LSP Implementations" })

keymap("n", "<leader>ds", function()
  require("telescope.builtin").lsp_document_symbols()
end, { desc = "Document Symbols" })

keymap("n", "<leader>ws", function()
  require("telescope.builtin").lsp_workspace_symbols()
end, { desc = "Workspace Symbols" })

-- =================== GIT ===================
keymap("n", "<leader>gc", function()
  require("telescope.builtin").git_commits()
end, { desc = "Git Commits" })

keymap("n", "<leader>gb", function()
  require("telescope.builtin").git_branches()
end, { desc = "Git Branches" })

keymap("n", "<leader>gs", function()
  require("telescope.builtin").git_status()
end, { desc = "Git Status" })

-- =================== MISC ===================
keymap("n", "<leader>fh", function()
  require("telescope.builtin").help_tags()
end, { desc = "Help Tags" })

keymap("n", "<leader>fk", function()
  require("telescope.builtin").keymaps()
end, { desc = "Find Keykeymaps" })

keymap("n", "<leader>fc", function()
  require("telescope.builtin").commands()
end, { desc = "Commands" })

