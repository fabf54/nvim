require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = {
		"clangd",
		"cssls",
		"gopls",
		"groovyls",
		"hls",
		"html",
		"intelephense",
		"jdtls",
		"jsonls",
		"lua_ls",
		"omnisharp",
		"ts_ls",
		"pyright",
		"ruby_lsp",
		"terraformls",
		"yamlls",
    "rust_analyzer",
	},
	automatic_enable = false,
})

vim.lsp.enable({
	"clangd",
	"cssls",
	"gopls",
	"groovyls",
	"hls",
	"html",
	"intelephense",
	"jdtls",
	"jsonls",
	"lua_ls",
	"omnisharp",
	"ts_ls",
	"pyright",
	"ruby_lsp",
	"terraformls",
	"yamlls",
  "rust_analyzer",
})

if vim.fn.exists(":LspInfo") == 0 then
	vim.api.nvim_create_user_command("LspInfo", "checkhealth vim.lsp", {})
end
 
-- vim.lsp.config("ts_ls", {
-- 	-- Server-specific settings. See `:help lsp-quickstart`
-- 	filetypes = { "html" }
-- 	settings = {
-- 		implicitprojectconfiguration = {
-- 			checkjs = true,
-- 		},
-- 	},
-- })
 
vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, {})
