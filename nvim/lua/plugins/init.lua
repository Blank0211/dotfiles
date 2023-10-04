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
-- [ Autoclose ]
require('autoclose').setup {
    options = {
        disable_when_touch = true,
    }
}

-- [ Colorscheme ]
require('tokyonight').setup {
    style = 'night',
}
vim.cmd[[colorscheme tokyonight]]

-- [ Mini.Clue ]
local miniclue = require('mini.clue')
miniclue.setup({
    -- Array of opt-in triggers which start custom key query process.
    -- **Needs to have something in order to show clues**.
    triggers = {
        -- Leader triggers
        {mode = 'n', keys = '<Leader>'},
        {mode = 'x', keys = '<Leader>'},

        -- Built-in completion
        {mode = 'i', keys = '<C-x>'},

        -- `g` key
        {mode = 'n', keys = 'g'},
        {mode = 'x', keys = 'g'},

        -- Marks
        {mode = 'n', keys = "'"},
        {mode = 'n', keys = '`'},
        {mode = 'x', keys = "'"},
        {mode = 'x', keys = '`'},

        -- Registers
        {mode = 'n', keys = '"'},
        {mode = 'x', keys = '"'},
        {mode = 'i', keys = '<C-r>'},
        {mode = 'c', keys = '<C-r>'},

        -- Window commands
        {mode = 'n', keys = '<C-w>'},

        -- `z` key
        {mode = 'n', keys = 'z'},
        {mode = 'x', keys = 'z'},
    },

    -- Array of extra clues to show.
    clues = {
        -- Enhance this by adding descriptions for <Leader> mapping groups
        miniclue.gen_clues.builtin_completion(),
        miniclue.gen_clues.g(),
        miniclue.gen_clues.marks(),
        miniclue.gen_clues.registers(),
        miniclue.gen_clues.windows(),
        miniclue.gen_clues.z(),
    },

    -- Clue window settings
    window = {
        -- Delay before showing clue window
        delay = 20,

        config = {
            width = 40, -- Window width
        }
    },
})

-- [ Mini.Files ]
require('mini.files').setup()

