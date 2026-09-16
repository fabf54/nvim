vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
	pattern = "*.lhs",
	callback = function()
		vim.bo.filetype = "haskell"
	end,
})

vim.filetype.add({
	extension = {
		html = "html",
	},
})

vim.treesitter.language.register("ruby", { "crystal" })
vim.treesitter.language.register("gotmpl", { "html" })

vim.api.nvim_create_autocmd("FileType", {
	callback = function(ev)
		-- Neovim 0.12+ provides Tree-sitter directly.  Starting it with pcall
		-- keeps filetypes without a bundled parser usable as normal.
		pcall(vim.treesitter.start, ev.buf)
	end,
})
