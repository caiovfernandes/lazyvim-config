return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
	},
	config = function()
		-- import mason
		local mason = require("mason")

		-- import mason-lspconfig
		local mason_lspconfig = require("mason-lspconfig")
		-- enable mason and configure icons
		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lspconfig.setup({
			-- list if servers for mason to install
			ensure_installed = {
				"tsserver",
				"html",
				"lua_ls",
				"graphql",
				"pyright",
				"tflint",
				"pylsp",
				"gopls",
				"golangci_lint_ls",
				"jsonls",
				"biome",
				"marksman",
				"yamlls",
				"dockerls",
				"bashls",
				"quick_lint_js",
			},
			-- auto-install configured serevers (with lspconfig)
			automatic_installation = true,
		})
	end,
}
