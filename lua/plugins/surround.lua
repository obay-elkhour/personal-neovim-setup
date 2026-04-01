return {
  "echasnovski/mini.surround",
  version = false,

  config = function()
    require("mini.surround").setup({
      mappings = {
        add = "ma",        -- add surrounding
        delete = "md",     -- delete surrounding
        find = "mf",       -- find right
        find_left = "mF",  -- find left
        highlight = "mh",  -- highlight surrounding
        replace = "mr",    -- replace surrounding
        update_n_linem = "mn", -- search lines
      },
    })
  end
}

