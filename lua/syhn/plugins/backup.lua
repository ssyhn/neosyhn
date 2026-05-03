return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
	"nvim-tree/nvim-web-devicons",
    },
    config = function()
	require("nvim-tree").setup {
	    diagnostics = {
		enable = true,
		show_on_dirs = true,
		show_on_open_dirs = true,
	    }
	}
	local keymap = vim.keymap
	keymap.set("n", "<leader>n", "<cmd>NvimTreeToggle<CR>")
	keymap.set("n", "<leader>e", "<cmd>NvimTreeFocus<CR>")
    end,
}
