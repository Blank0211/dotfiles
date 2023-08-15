-- =========================
-- [[ PLUGIN INSTALLATION ]]
-- =========================
require('paq') {
  'savq/paq-nvim', -- Let Paq manage itself
  
  'm4xshen/autoclose.nvim', -- Autoclose
  'folke/tokyonight.nvim', -- Colorscheme
  'Tyler-Barham/floating-help.nvim' -- FloatingHelp
}

-- ===================
-- [[ PLUGIN SETUPS ]]
-- ===================

-- [ Autoclose ]
require('autoclose').setup {
  keys = {
    ['<'] = {escape = false, close = true, pair = '<>', disabled_filetypes = {}},
  }
}

-- [ Colorscheme ]
require('tokyonight').setup {
  style = 'night',
}
vim.cmd[[colorscheme tokyonight]]

-- [ FloatingHelp ]
require('floating-help').setup {
  position = 'SE'
}


