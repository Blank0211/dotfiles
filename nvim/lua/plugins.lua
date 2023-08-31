-- =========================
-- [[ PLUGIN INSTALLATIONS ]]
-- =========================
require('paq') {
  'savq/paq-nvim', -- Let Paq manage itself
  
  'm4xshen/autoclose.nvim', -- Autoclose
  'folke/tokyonight.nvim', -- Colorscheme
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


