vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.o.number = true
vim.o.relativenumber = true

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.scrolloff = 4
vim.o.wrap = false

vim.o.winborder = 'rounded'
vim.o.termguicolors = true

-- auto shot diagnostics for error but rest show with <leader>cd for open_float()
vim.diagnostic.config({
  virtual_text = {
    severity = vim.diagnostic.severity.ERROR
  },
})

vim.o.hlsearch = false
