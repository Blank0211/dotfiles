local opts = {noremap = true}
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
-- Delete word with CTRL+Backspace
vim.keymap.set("i", "<C-H>", "<C-W>")
-- Exit terminal mode with Esc
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")
-- Open Netrw
vim.keymap.set('n', '<leader>f', ':Ex<CR>')
-- Save & load folds
vim.keymap.set('n', '<leader>sf', ':mkview')
vim.keymap.set('n', '<leader>lf', ':loadview')

