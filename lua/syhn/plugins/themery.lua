return {
	"zaldih/themery.nvim",
	lazy = false,
	config = function()
		require("themery").setup({
			themes = { "koda", "tokyonight", "rose-pine", "kanagawa" },
			livePreview = true,
		})
	end,
}
