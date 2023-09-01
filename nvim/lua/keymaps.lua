vim.g.mapleader = ' '
local set = vim.keymap.set

-- Folds
set('n', '<leader>sf', ':mkview<CR>',
  {desc = 'Save current folds', silent=true})
set('n', '<leader>lf', ':loadview<CR>',
  {desc = 'Load saved folds', silent=true})

-- Powershell
set('n', '<leader>ps', '<cmd>vs term://pwsh<CR>',
  {desc = 'Open PS in verctical split'})
set('t', 'qq', '<cmd>quit<CR>',
  {desc = 'Exit PS (TERMINAL MODE ONLY)'})
set('t', '<Esc>', '<C-\\><C-n>',
  {desc = 'Exit Terminal mode with ESC'})

-- Misc
set('i', '<C-H>', '<C-W>', -- NOTE: <C-BS> does not work on windows.
  {desc = 'Delete word with CTRL+BS'})
set('i', '<leader>ff', MiniFiles.open,
  {desc = 'Open MiniFiles Explorer'})


