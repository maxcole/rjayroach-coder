
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = ","
vim.g.background = "light"

vim.opt.swapfile = false

-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')
vim.keymap.set('i', '<leader>w', '<Esc>:w<cr><Space>')
vim.keymap.set('i', '<leader>wq', '<Esc>:wq<cr><Space>')
vim.keymap.set('i', '<leader>wqa', '<Esc>:wqa<cr><Space>')


vim.wo.number = true
vim.wo.relativenumber = true

vim.opt.conceallevel = 1
