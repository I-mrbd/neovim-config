return {
	-- Smooth scrolling for stuff like <C-d> or <C-u>
	"karb94/neoscroll.nvim",
	config = function()
		require('neoscroll').setup({})
	end
}
