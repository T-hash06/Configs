return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "tsserver", "svelte" }
			})
		end
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lsp = require("lspconfig")
			-- lsp.lua_ls.setup({})
			lsp.tsserver.setup({})
			lsp.svelte.setup({})
			vim.keymap.set("n", "<Leader>;", vim.lsp.buf.hover)
			vim.keymap.set("n", "<Leader>.", vim.lsp.buf.definition)
		end
	}
}
