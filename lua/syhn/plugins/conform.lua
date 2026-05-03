return {
	'stevearc/conform.nvim',
	config = function ()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				typescript = { "prettierd", "prettier", stop_after_first = true },
				cpp = { "clang_format" },
			},
			format_on_save = {
				timeout_ms = 500,
				lsp_fallback = true,
			},
		})

	end
}
