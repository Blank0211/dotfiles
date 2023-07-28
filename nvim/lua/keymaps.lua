local opts = {noremap = true}
vim.g.mapleader = ' '
local set = vim.keymap.set

-- Delete word with CTRL+Backspace
set("i", "<C-H>", "<C-W>")
-- Exit terminal mode with Esc
set("t", "<Esc>", "<C-\\><C-n>")
-- Open Netrw
set('n', '<leader>f', ':Ex<CR>')
-- Save & load folds
set('n', '<leader>sf', ':mkview')
set('n', '<leader>lf', ':loadview')

-- Open powershell vertically
set('n', '<leader>ps', '<cmd>vs term://pwsh<CR>')
-- Exit powershell
set('t', 'qq', '<cmd>quit<CR>')






