-- =========================================================
-- Bootstrap lazy.nvim
-- =========================================================
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- =========================================================
-- Plugins
-- =========================================================
require("lazy").setup({

  -- ================= LSP =================
  {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v3.x",
    dependencies = {
      { "neovim/nvim-lspconfig" },
      { "williamboman/mason.nvim" },
      { "williamboman/mason-lspconfig.nvim" },
    },
  },

  -- ================= Autocomplete =================
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      { "hrsh7th/cmp-nvim-lsp" },
      { "hrsh7th/cmp-path" },
      { "hrsh7th/cmp-buffer" },
      { "L3MON4D3/LuaSnip" },
    },
  },

  -- ================= Autopairs =================
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    opts = {},
  },

  -- ================= File Tree =================
  {
    "nvim-tree/nvim-tree.lua",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    opts = {},
  },

  -- ================= Clipboard (OSC52) =================
  "ojroques/vim-oscyank",

  -- ================ Themes ==================
  "folke/tokyonight.nvim",
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavour = "mocha", -- latte, frappe, macchiato, mocha
      transparent_background = true,

      integrations = {
        treesitter = true,
        native_lsp = {
          enabled = true,
        },
        cmp = true,
        nvimtree = true,
        telescope = true,
        mason = true,
        which_key = true,
      },
    },
  },
  -- ==================== NvimTree Sitter =================
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    config = function()
      require("nvim-treesitter").setup({
        highlight = { enable = true },
        indent = { enable = true },
        ensure_installed = { "lua", "javascript", "typescript", "python", "css", "html" },
      })
    end,
  },

  -- ==================== Lualine ===================== optional
  -- {
  --   'nvim-lualine/lualine.nvim',
  --   dependencies = { 'nvim-tree/nvim-web-devicons' },
  --   config = function()
  --     require('lualine').setup()
  --   end
  -- },
  -- ================== Undo Tree ====================
  {
    "mbbill/undotree",
    cmd = "UndotreeToggle",
    config = function()
      vim.g.undotree_SetFocusWhenToggle = 1
    end,
  },
  -- ================= Colorize ====================
  {
    "brenoprata10/nvim-highlight-colors",
    config = function()
      require('nvim-highlight-colors').setup({})
    end
  },
  -- ================ Telescope ====================
  {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    -- Optional: For better performance
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    config = function()
      require('telescope').setup({
        -- Add setup configuration here
      })
      -- Load fzf extension
      require('telescope').load_extension('fzf')
    end
  }
})

-- =========================================================
-- LSP-ZERO SETUP (v3.x way)
-- =========================================================
local lsp_zero = require("lsp-zero")

lsp_zero.on_attach(function(_, bufnr)
  lsp_zero.default_keymaps({ buffer = bufnr })
end)

require("mason").setup()

require("mason-lspconfig").setup({
  ensure_installed = {
    -- add servers here
  },
  handlers = {
    lsp_zero.default_setup,
  },
})

-- =========================================================
-- CMP SETUP
-- =========================================================
local cmp = require("cmp")
local luasnip = require("luasnip")

cmp.setup({
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },

  mapping = cmp.mapping.preset.insert({
    ["<CR>"] = cmp.mapping.confirm({ select = true }),
    ["<Tab>"] = cmp.mapping.select_next_item(),
    ["<S-Tab>"] = cmp.mapping.select_prev_item(),
    ["<C-Space>"] = cmp.mapping.complete(),
  }),
  sources = cmp.config.sources({
    { name = "nvim_lsp" },
    { name = "path" },
  }, {
    { name = "luasnip" },
    { name = "buffer" },
  })
})



-- =========================================================
-- AUTOPAIRS + CMP INTEGRATION
-- =========================================================
local npairs = require("nvim-autopairs")
npairs.setup({})

local cmp_autopairs = require("nvim-autopairs.completion.cmp")
cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())

--- ========================================================
---  LUALINE
--- ========================================================
-- require('lualine').setup {
--   options = {
--     theme = 'auto',
--     icons_enabled = true,
--     component_separators = { left = '', right = ''},
--     section_separators = { left = '', right = ''},
--   }
-- }




-- =========================================================
-- Your custom modules
-- ========================================================
require("options")
require("keybinds")
require("transparency")
