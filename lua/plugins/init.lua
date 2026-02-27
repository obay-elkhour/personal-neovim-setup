require("lazy").setup({

  { import = "plugins.ui" },
  { import = "plugins.treesitter" },
  { import = "plugins.telescope" },
  { import = "plugins.lsp" },
  { import = "plugins.cmp" },
	{ import = "plugins.extras" },


  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    opts = {},
  },

  {
    "windwp/nvim-ts-autotag",
    opts = {},
  },

  {
    "mbbill/undotree",
    cmd = "UndotreeToggle",
  },

})

