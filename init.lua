-- Bootstrap Lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(lazypath)

-- Load core settings
require("core.options")
require("core.keymaps")
require("core.autocmds")

-- Load plugins from lua/plugins/
require("lazy").setup("plugins")

