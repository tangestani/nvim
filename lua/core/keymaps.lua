vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.autowrite = true
vim.opt.cursorline = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.shiftround = true
vim.opt.expandtab = true

vim.opt.number = true

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.keymap.set('i', 'jk', '<esc>')
vim.keymap.set('n', '<leader>w', '<cmd>write<cr>')
