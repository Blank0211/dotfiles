-- ==========================
-- [[ PLUGIN INSTALLATIONS ]]
-- ==========================
require('paq') {
    'savq/paq-nvim', -- Let Paq manage itself

    'm4xshen/autoclose.nvim',
    'folke/tokyonight.nvim',
    'echasnovski/mini.clue',
    'echasnovski/mini.files',

    -- Dependencies
    'nvim-tree/nvim-web-devicons', -- For: Mini.Files
}

-- ===================
-- [[ PLUGIN SETUPS ]]
-- ===================

-- [ Mini.Files ]
require('mini.files').setup()

