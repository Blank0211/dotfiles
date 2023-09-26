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

-- Compile C files
local gcc = ":!gcc % -o a.exe -std=c18 -Wall -Wextra -pedantic -Wformat=2<CR>"
local clang = ":!clang % -o a.exe -std=c18 -Wall -Wextra -pedantic -Wformat=2<CR>"
set('n', '<leader>cg', gcc,
  {desc = 'Compile current C file with gcc'})
set('n', '<leader>cc', clang,
  {desc = 'Compile current C file with clang'})

