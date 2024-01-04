-- PLUGIN INSTALLATIONS
require('paq') {
    'savq/paq-nvim', -- Let Paq manage itself

    'm4xshen/autoclose.nvim',
    'folke/tokyonight.nvim',
    'echasnovski/mini.clue',
    'echasnovski/mini.files',
    'dcampos/nvim-snippy',

    -- Dependencies
    'nvim-tree/nvim-web-devicons', -- For: MiniFiles
}

-- [[ HOW TO UNINSTALL ]]
-- 1. Remove plugin from above
-- 2. Remove plugin module from lua/plugins dir
-- 3. Remove plugin from require list in nvim/init.lua
-- 4. Run :PaqClean command

