return {
	{
		-- "folke/tokyonight.nvim",
		"sho-87/kanagawa-paper.nvim",
		lazy = false,
		priotity = 1000,
		opts = {
			transparent = true,
			styles = {
				sidebars = 'transparent',
				floats = 'transparent',
			},
		},
		init = function()
			-- vim.cmd([[colorscheme tokyonight]])
			vim.cmd([[colorscheme kanagawa-paper]])
		end,
	},
}
