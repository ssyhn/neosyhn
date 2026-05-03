return {
    {
	"oskarnurm/koda.nvim",
	lazy = false, -- make sure we load this during startup if it is your main colorscheme
	priority = 1000, -- make sure to load this before all the other start plugins
	config = function()
	    	require("koda").setup({ transparent = false })
		vim.cmd("colorscheme koda")
	end,
    },
    {
	"folke/tokyonight.nvim",
	opts = {},
	lazy = true,
	config = function ()
	    vim.cmd("colorscheme tokyonight")
	end,
    },
    {
	"rose-pine/neovim",
	name = "rose-pine",
	lazy = true,
	config = function()
	    vim.cmd("colorscheme rose-pine")
	end
    },
    {
	"rebelot/kanagawa.nvim",
	opts = {},
	lazy = true,
	config = function ()
	    vim.cmd("colorscheme kanagawa")
	end,
    },
}
