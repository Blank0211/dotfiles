vim.g.mapleader = ' '
local set = vim.keymap.set

-- Folds
set('n', '<leader>sf', ':mkview<CR>',
  {desc = 'Save current folds'})
set('n', '<leader>lf', ':loadview<CR>',
  {desc = 'Load saved folds'})

-- Misc
set('i', '<C-H>', '<C-W>', -- NOTE: <C-BS> does not work on windows.
  {desc = 'Delete word with CTRL+BS'})
set('n', '<leader>ff', MiniFiles.open,
  {desc = 'Open MiniFiles Explorer'})


