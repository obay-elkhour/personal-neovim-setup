return {
  "nvim-treesitter/nvim-treesitter",
  event = {"BufReadPost", "BufNewFile"},
  build = ":TSUpdate",

  config = function()
    require("nvim-treesitter").setup({
      ensure_installed = { "lua", "javascript", "typescript", "bash", "json", "nix", "html", "css" },
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}


