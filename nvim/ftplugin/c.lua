vim.opt_local.tabstop = 4
vim.opt_local.shiftwidth = 4
vim.opt_local.softtabstop = 4

function cmnt()
    -- Get line & strip leading white space
    local line = vim.api.nvim_get_current_line():match('^%s*(.*)')
    line = line:sub(1, 2)

    return line == '//' and '^dw$' or 'I// <ESC>$'
end

vim.keymap.set('n', '<Leader>mm', cmnt,
    {desc = 'Toggle comment on current line', expr = true, buffer = 0})

