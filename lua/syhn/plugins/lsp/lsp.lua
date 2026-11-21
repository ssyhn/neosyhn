return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		{ "antosha417/nvim-lsp-file-operations", config = true },
		{ "folke/neodev.nvim", opts = {} },
	},
	config = function()
		local lspconfig = vim.lsp.config["lspconfig"]
		local cmp_nvim_lsp = require("cmp_nvim_lsp")
		vim.api.nvim_create_autocmd("LspAttach", {

			callback = function(event)
				local map = function(keys, func, desc)
					vim.keymap.set("n", keys, func, { buffer = event.buf, desc = "LSP: " .. desc })
				end

				-- buffer = event.buf means these keys ONLY work in buffers with an LSP
				map("gd", vim.lsp.buf.definition, "Go to Definition")
				map("gr", vim.lsp.buf.references, "Go to References")
				map("K", vim.lsp.buf.hover, "Hover Docs")
				map("<leader>rn", vim.lsp.buf.rename, "Rename")
				map("<leader>ca", vim.lsp.buf.code_action, "Code Action")
			end,
		})
		local capabilities = cmp_nvim_lsp.default_capabilities()
		vim.lsp.config("lua_ls", {
			settings = {
				Lua = {
					diagnostics = {
						globals = { "vim" },
					},
					workspace = {
						library = vim.api.nvim_get_runtime_file("", true),
						checkThirdParty = false,
					},
					telemetry = {
						enable = false,
					},
				},
			},
			capabilities = capabilities,
		})

		vim.lsp.enable({ "clangd" })
		vim.lsp.enable({ "lua_ls" })
		vim.lsp.enable({ "ts_ls" })
		vim.lsp.enable({ "java_language_server" })
		vim.lsp.enable({ "rust_analyzer" })

		vim.lsp.config("gdscript", {
			name = "godot",
			cmd = vim.lsp.rpc.connect("127.0.0.1", 6005),
			filetypes = { "gd", "gdscript", "gdscript3" },
			root_dir = vim.fs.root(0, { "project.godot", ".git" }),
		})

		vim.lsp.enable({ "gdscript" })

		vim.o.updatetime = 500

		vim.diagnostic.config({
			virtual_text = true,
			update_in_insert = false,
			signs = true,
			underline = true,
		})
	end,
}
