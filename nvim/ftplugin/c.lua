-- =============
-- [[ OPTIONS ]]
-- =============
vim.opt_local.tabstop = 4
vim.opt_local.shiftwidth = 4
vim.opt_local.softtabstop = 4

-- =============
-- [[ KEYMAPS ]] 
-- =============
-- Return '^dw$' or 'I// <ESC>$', depending on the first two chars of the line
function cmnt()
    -- get line & strip leading whitespace
    local line = vim.api.nvim_get_current_line():match('^%s*(.*)')
    return line:sub(1, 2) == '//' and '^dw$' or 'I// <ESC>$'
end
vim.keymap.set('n', '<Leader>mm', cmnt,
    {desc = 'Toggle comment on current line', expr = true, buffer = 0})

