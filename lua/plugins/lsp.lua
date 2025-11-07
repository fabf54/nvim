require("mason").setup()
require("mason-lspconfig").setup()
 
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
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, {})
