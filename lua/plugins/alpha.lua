return {
  {
    "goolord/alpha-nvim",

    config = function()
      local alpha = require("alpha")
      local dashboard = require("alpha.themes.dashboard")

      dashboard.section.header.val = {
        "███╗   ██╗██╗   ██╗██╗███╗   ███╗",
        "████╗  ██║██║   ██║██║████╗ ████║",
        "██╔██╗ ██║██║   ██║██║██╔████╔██║",
        "██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║",
        "██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║",
        "╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝",
      }

      dashboard.section.buttons.val = {
        dashboard.button("e", "New file", "<CMD>ene<CR>"),
        dashboard.button("ff", "Find file", "<CMD>Telescope find_files<CR>"),
        dashboard.button("fg", "Live grep", "<CMD>Telescope live_grep<CR>"),
        dashboard.button("ch", "Change colorscheme", "<CMD>Telescope colorscheme<CR>"),
        dashboard.button("fc", "All commands", "<CMD>Telescope commands<CR>"),
        dashboard.button("q", "Quit", "<CMD>qa<CR>"),
      }

      alpha.setup(dashboard.opts)
    end,
  },
}
