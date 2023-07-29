local opts = {noremap = true}
vim.g.mapleader = ' '
local set = vim.keymap.set

-- Folds
set('n', '<leader>sf', ':mkview',
  {desc = 'Save current folds'})
set('n', '<leader>lf', ':loadview',
  {desc = 'Load saved folds'})

-- Powershell
set('n', '<leader>ps', '<cmd>vs term://pwsh<CR>',
  {desc = 'Open PS in verctical split'})
set('t', 'qq', '<cmd>quit<CR>',
  {desc = 'Exit PS (TERMINAL MODE ONLY)'})
set("t", "<Esc>", "<C-\\><C-n>",
  {desc = 'Exit Terminal mode with ESC'})

-- Misc
set("i", "<C-H>", "<C-W>",
  {desc = 'Delete word with CTRL+BS'})
set('n', '<leader>f', ':Ex<CR>',
  {desc = 'Open file explorer (Netrw)'})




