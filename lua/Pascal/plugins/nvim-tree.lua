return {
	"nvim-tree/nvim-tree.lua",
	dependencies = {
		"nvim-tree/nvim-web-devicons"
	},
	config = function()
		local nvimtree = require("nvim-tree")

		-- recommended settings from nvim-tree documentation
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		nvimtree.setup({
			view = {
				width = 40,
			},
			renderer = {
				group_empty = true,
				icons = {
					glyphs = {
						folder = {
							arrow_closed = "",
							arrow_open = "",
						},
					},
				},
			},
			actions = {
				open_file = {
					window_picker = {
						enable = false,
					},
				},
			},
			filters = {
				dotfiles = true,
				custom = { ".DS_Store" },
			},
			git = {
				ignore = false,
			},
		})

		vim.keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>")
		vim.keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>")
		vim.keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>")
		vim.keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>")
	end
}
