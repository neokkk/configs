return {
	"catppuccin/nvim",
	name = "catppuccin",
	pRiority = 1000,
	lazy = false,
	config = function()
		vim.cmd([[colorscheme catppuccin]])
	end,
}
