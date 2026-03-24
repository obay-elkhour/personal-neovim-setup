return {
  {
    "echasnovski/mini.surround",
    version = false,

    config = function()
      require("mini.surround").setup({
        -- optional: customize mappings (these are defaults)
        mappings = {
          add = "sa",        -- add surrounding
          delete = "sd",     -- delete surrounding
          find = "sf",       -- find right
          find_left = "sF",  -- find left
          highlight = "sh",  -- highlight surrounding
          replace = "sr",    -- replace surrounding
          update_n_lines = "sn", -- search lines
        },
      })
    end,
  },
}
