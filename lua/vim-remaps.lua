vim.keymap.set({ 'i', 'v', 's' }, '<C-c>', '<Esc>', { noremap = true })

vim.keymap.set('n', '<Leader>pv', vim.cmd.Ex)

-- moving lines in visual mode, nice
-- remaps for staying in the middle on ctrl d/u for halfway jumps
vim.keymap.set('n', '<C-d>', "<C-d>zz")
vim.keymap.set('n', '<C-u>', "<C-u>zz")

vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- stay in the middle on search
vim.keymap.set('n', 'n', "nzzzv")
vim.keymap.set('n', 'N', "Nzzzv")

-- for system clipboard use leader copy
vim.keymap.set('x', '<leader>p', "\"_dP")
vim.keymap.set({'n', 'v'}, '<leader>y', "\"+y")

-- exit from termianl buffer
vim.keymap.set('t', '<C-f>', '<C-\\><C-n>')

-- command line window remap magic. ctrl-f being a toggle now

vim.keymap.set({ 'i', 'v', 'n' }, '<C-f>', function()

  local keys = vim.api.nvim_replace_termcodes('<Esc><C-c>', true, false, true)

  vim.api.nvim_feedkeys(keys, 'n', false)

end, { noremap = true, silent = true })

-- Literal search and replace
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- showing up diagnostics with newlines in a floating window
vim.keymap.set({ "n" }, "<leader>sd", vim.diagnostic.open_float)
