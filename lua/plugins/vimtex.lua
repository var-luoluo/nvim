return {
	{
		"lervag/vimtex",
		init = function()
			-- Skim config
			vim.g.vimtex_view_method = "skim"
			vim.g.vimtex_view_skim_sync = 1
			vim.g.vimtex_view_skim_activate = 1
			-- 1, highlight current line in PDF after command
			vim.g.vimtex_view_skim_reading_bar = 0

			-- Open PDF viewer automatically
			vim.g.vimtex_view_automatic = 1

			-- Warnings to ignore
			vim.g.vimtex_quickfix_mode = 1
			vim.g.vimtex_quickfix_ignore_filters = {
				"Latex Font Warning: Font shape",
				"Package fontspace Warning:",
			}

			-- No tui
			vim.g.vimtex_syntax_conceal = {
				section = 0,
				accents = 0,
				cites = 0,
				math_fracs = 0,
				math_super_sub = 0,
			}

			-- Compile and cleanup
			vim.api.nvim_create_augroup("vimtex", { clear = true })
			vim.api.nvim_create_autocmd("User", {
				group = "vimtex",
				pattern = "VimtexEventQuit",
				command = "VimtexClean",
			})
		end,
	},
	-- For snippets
	{
		"iurimateus/luasnip-latex-snippets.nvim",
		dependencies = { "L3MON4D3/LuaSnip", "lervag/vimtex" },
		config = function()
			require("luasnip-latex-snippets").setup()
			require("luasnip").config.setup({ enable_autosnippets = true })
		end,
	},
	--{
	--"nvim-treesitter/nvim-treesitter",
	--opts = { ignore_install = "latex" },
	--},
}
