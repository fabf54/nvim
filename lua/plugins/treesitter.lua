local parsers = require("nvim-treesitter.parsers")
local info = require("nvim-treesitter.info")
local install = require("nvim-treesitter.install")

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
		local lang = vim.treesitter.language.get_lang(ev.match)
		if not lang then
			return
		end

		local available_langs = parsers.available_parsers()
		local is_available = vim.tbl_contains(available_langs, lang)
		if is_available then
			if not vim.tbl_contains(info.installed_parsers(), lang) then
				vim.notify("Installing tree-sitter parser for " .. lang .. "...", vim.log.levels.INFO)
				install.ensure_installed(lang)
				return
			end

			vim.treesitter.start()
		end
	end,
})
