local M = {
    'nvim-treesitter/nvim-treesitter',

-- Build function runs on install.
    build = function()
        require('nvim-treesitter.install').update({ with_sync = true})()
    end,

-- Config function runs on loading treesitter.
    config = function()
        local configs = require('nvim-treesitter.configs')

        configs.setup({
            ensure_installed = 'all',
            highlight = { enable = true },
        })
    end,
}

return { M }
