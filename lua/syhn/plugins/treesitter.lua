return {

	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.config")
		configs.setup({
			highlight = {
				enable = true,
			},
			indent = { enable = false },
			autotag = { enable = true },
			ensure_installed = {
				"java",
				"lua",
				"tsx",
				"godot_resource",
				"gd_shader",
				"gdscript",
				"java",
				"c_sharp",
				"css",
			},
			auto_install = true,
			install_dir = vim.fn.stdpath("data") .. "/site",
		})
	end,
}
