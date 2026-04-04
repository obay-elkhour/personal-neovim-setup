local function reload_wallust_colors()
  local path = vim.fn.expand("~/.config/nvim/colors.lua")
  
  -- 1. Force Lua to forget the old version of the file
  package.loaded[path] = nil 
  
  -- 2. Fetch the new colors
  local new_colors = {}
  if vim.fn.filereadable(path) == 1 then
    -- We use loadfile instead of dofile for safer execution during reloads
    local chunk = loadfile(path)
    if chunk then
      new_colors = chunk()
    end
  end

  -- 3. Re-setup Catppuccin with the new colors
  require("catppuccin").setup({
    color_overrides = {
      all = new_colors,
    },
    transparent_background = true,
  })

  -- 4. Re-apply the colorscheme to trigger the UI update
  vim.cmd.colorscheme("catppuccin")
  
  print("Wallust colors reloaded!")
end

-- Create a user command so you can just type :ReloadWallust
vim.api.nvim_create_user_command("ReloadWallust", reload_wallust_colors, {})
