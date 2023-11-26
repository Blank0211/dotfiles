-- =============
-- [[ OPTIONS ]]
-- =============
vim.opt_local.tabstop = 4
vim.opt_local.shiftwidth = 4
vim.opt_local.softtabstop = 4
vim.opt_local.makeprg = "mingw32-make.exe"

-- =============
-- [[ KEYMAPS ]] 
-- =============
function cmnt()
    -- get line. strip leading whitespace. Return '^dw$' or 'I// <ESC>$',
    -- depending on the first two chars of the line.
    local line = vim.api.nvim_get_current_line():match('^%s*(.*)')
    return line:sub(1, 2) == '//' and '^dw$' or 'I// <ESC>$'
end
vim.keymap.set('n', '<Leader>mm', cmnt,
    {desc = 'Toggle comment on current line', expr = true, buffer = 0})

-- Compile C files
local c_cmd = " % -o a.exe -std=c18 -Wall -Wextra -pedantic -Wformat=2 -g<CR>"
vim.keymap.set('n', '<leader>cg', ":!gcc" .. c_cmd,
    {desc = 'Compile current C file with gcc', buffer = 0})
vim.keymap.set('n', '<leader>cc', ":!clang" .. c_cmd,
    {desc = 'Compile current C file with clang', buffer = 0})

