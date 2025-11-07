local harpoon = require("harpoon")
 
harpoon:setup({
	settings = {
		save_on_toggle = true,
		save_on_change = true,
		select_with_nil = true,
	},
})
 
vim.keymap.set("n", "<leader>a", function()
	harpoon:list():add()
end)
 
vim.keymap.set({ "n", "t" }, "<C-e>", function()
	harpoon.ui:toggle_quick_menu(harpoon:list())
end)
 
vim.keymap.set({ "n" }, "<C-c>", function()
	harpoon.ui:close_menu()
end)
 
vim.keymap.set({ "n", "t" }, "<C-h>", function()
	harpoon:list():select(1)
end)
vim.keymap.set({ "n", "t" }, "<C-j>", function()
	harpoon:list():select(2)
end)
vim.keymap.set({ "n", "t" }, "<C-k>", function()
	harpoon:list():select(3)
end)
vim.keymap.set({ "n", "t" }, "<C-l>", function()
	harpoon:list():select(4)
end)
