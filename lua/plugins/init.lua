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
    "mbbill/undotree",
    cmd = "UndotreeToggle",
  },

})

