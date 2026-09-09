local conform = require("conform")
local lint = require("lint")

require("mason-tool-installer").setup({
	ensure_installed = {
		"checkstyle",
		"clang-format",
		"csharpier",
		"fourmolu",
		"goimports",
		"google-java-format",
		"php-cs-fixer",
		"prettier",
		"ruff",
		"rubocop",
		"shfmt",
		"stylua",
	},
	run_on_start = true,
	auto_update = false,
})

conform.setup({
	formatters_by_ft = {
		bash = { "shfmt" },
		c = { "clang_format" },
		cpp = { "clang_format" },
		cs = { "csharpier" },
		css = { "prettier" },
		go = { "goimports", "gofmt" },
		haskell = { "fourmolu" },
		html = { "prettier" },
		java = { "google_java_format" },
		javascript = { "prettier" },
		javascriptreact = { "prettier" },
		json = { "prettier" },
		jsonc = { "prettier" },
		lua = { "stylua" },
		php = { "php_cs_fixer" },
		python = { "ruff_format" },
		ruby = { "rubocop" },
		rust = { "rustfmt" },
		sh = { "shfmt" },
		terraform = { "terraform_fmt" },
		typescript = { "prettier" },
		typescriptreact = { "prettier" },
		yaml = { "prettier" },
		zsh = { "shfmt" },
	},
	formatters = {
		terraform_fmt = {
			command = "tofu",
		},
	},
})

lint.linters_by_ft = {
	java = { "checkstyle" },
	ruby = { "rubocop" },
}

vim.api.nvim_create_autocmd({ "BufWritePost", "InsertLeave" }, {
	callback = function()
		lint.try_lint()
	end,
})

vim.keymap.set("n", "<leader>f", function()
	conform.format({ async = true, lsp_format = "fallback" })
end, { desc = "Format buffer" })
