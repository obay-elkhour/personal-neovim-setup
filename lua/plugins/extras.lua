return {

	-- ================= GITSIGNS =================
	{
		"lewis6991/gitsigns.nvim",
		event = "BufReadPre",
		opts = {
			current_line_blame = true,
		},
	},

	-- ================= FORMATTER =================
	{
		"stevearc/conform.nvim",
		event = "BufWritePre",
		config = function()
			require("conform").setup({
				format_on_save = {
					lsp_fallback = true,
				},
				formatters_by_ft = {
					lua = { "stylua" },
					javascript = { "prettier" },
					typescript = { "prettier" },
					python = { "black" },
					css = { "prettier" },
					html = { "prettier" },
				},
			})
		end,
	},

	-- ================= WHICH-KEY =================
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		opts = {},
	},

	-- ================= TROUBLE =================
	{
		"folke/trouble.nvim",
		cmd = "TroubleToggle",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {},
	},

	-- ================= INDENT LINES =================
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		event = "BufReadPre",
		opts = {},
	},

	-- ================= NOICE UI =================
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		dependencies = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify",
		},
		opts = {},
		config = function(_, opts)
			require("noice").setup(opts)
			require("notify").setup({
				background_colour = "#000000"
			})
		end
	},

	-- ================= SURROUND =================
	{
		"echasnovski/mini.surround",
		version = false,
		opts = {},
	},

	-- ================= TODO COMMENTS =================
	{
		"folke/todo-comments.nvim",
		event = "BufReadPost",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {},
	},

	-- ================= TELESCOPE UI SELECT =================
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").load_extension("ui-select")
		end,
	},

}

