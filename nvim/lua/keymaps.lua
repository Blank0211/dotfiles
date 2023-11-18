vim.g.mapleader = ' '
local set = vim.keymap.set

-- Folds
set('n', '<leader>fs', ':mkview<CR>',
  {desc = 'Save current folds'})
set('n', '<leader>fl', ':loadview<CR>',
  {desc = 'Load saved folds'})

-- Misc
set('i', '<C-H>', '<C-W>', -- NOTE: <C-BS> does not work on Windows.
  {desc = 'Delete word with CTRL+BS'})
MiniFiles = require('mini.files')
set('n', '<leader>ff', MiniFiles.open,
  {desc = 'Open MiniFiles Explorer'})

