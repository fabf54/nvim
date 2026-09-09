local wk = require("which-key")

wk.setup({
	win = {
		wo = {
			winblend = 25,
		},
	},
})

wk.add({
	{ "<leader>a", desc = "Add file to Harpoon" },
	{ "<leader>c", group = "Code" },
	{ "<leader>ca", desc = "Code action" },
	{ "<leader>cd", desc = "Show diagnostics" },
	{ "<leader>f", desc = "Format buffer" },
	{ "<leader>gd", desc = "Go to definition" },
	{ "<leader>pv", desc = "Open file browser" },
	{ "<leader>r", desc = "Search and replace word" },
	{ "<leader>rn", desc = "Rename symbol" },
	{ "<leader>s", group = "Search" },
	{ "<leader>sd", desc = "Show diagnostics" },
	{ "<leader>sf", desc = "Search files" },
	{ "<leader>sg", desc = "Search text" },
})
