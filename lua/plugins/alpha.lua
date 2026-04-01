return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    -- NEON BLOCK HEADER
    dashboard.section.header.val = {
      "███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗",
      "████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║",
      "██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║",
      "██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║",
      "██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║",
      "╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝",
    }

    -- Header Highlights (Gradient effect)
    dashboard.section.header.opts.hl = "AlphaHeader"

    dashboard.section.buttons.val = {
      dashboard.button("e",  "  New file",          "<CMD>ene<CR>"),
      dashboard.button("ff", "  Find file",         "<CMD>Telescope find_files<CR>"),
      dashboard.button("fg", "󰈭  Live grep",         "<CMD>Telescope live_grep<CR>"),
      dashboard.button("ch", "  Colorschemes",      "<CMD>Telescope colorscheme<CR>"),
      dashboard.button("fc", "  All commands",      "<CMD>Telescope commands<CR>"),
      dashboard.button("q",  "󰈆  Quit",              "<CMD>qa<CR>"),
    }

    -- Styling the UI
    for _, button in ipairs(dashboard.section.buttons.val) do
      button.opts.hl = "AlphaButtons"
      button.opts.hl_shortcut = "AlphaShortcut"
    end

    -- Footer with total plugin count
    local stats = require("lazy").stats()
    dashboard.section.footer.val = "󱐌 " .. stats.count .. " plugins loaded"
    dashboard.section.footer.opts.hl = "AlphaFooter"

    alpha.setup(dashboard.opts)
  end,
}

