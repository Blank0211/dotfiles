-- =============
-- [[ OPTIONS ]]
-- =============
vim.opt_local.tabstop = 4
vim.opt_local.shiftwidth = 4
vim.opt_local.softtabstop = 4

-- =============
-- [[ KEYMAPS ]] 
-- =============
function cmnt()
    -- get line & strip leading whitespace
    local line = vim.api.nvim_get_current_line():match('^%s*(.*)')
    -- Return '^dw$' or 'I// <ESC>$', depending on the first two chars of the line
    return line:sub(1, 2) == '//' and '^dw$' or 'I// <ESC>$'
end
vim.keymap.set('n', '<Leader>mm', cmnt,
    {desc = 'Toggle comment on current line', expr = true, buffer = 0})

-- Compile C files
local gcc = ":!gcc % -o a.exe -std=c18 -Wall -Wextra -pedantic -Wformat=2<CR>"
local clang = ":!clang % -o a.exe -std=c18 -Wall -Wextra -pedantic -Wformat=2<CR>"
vim.keymap.set('n', '<leader>cg', gcc,
    {desc = 'Compile current C file with gcc', buffer = 0})
vim.keymap.set('n', '<leader>cc', clang,
    {desc = 'Compile current C file with clang', buffer = 0})

