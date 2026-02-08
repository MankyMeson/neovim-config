local NEORG_MODULES = {

-- Core.
    ['core.defaults'] = {},
    ['core.autocommands'] = {},
    ['core.highlights'] = {},
    ['core.integrations.treesitter'] = {},
    ['core.concealer'] = {},
    ['core.export'] = {},

-- External. Plugin filenames listed.
    ['external.pandoc'] = {}, -- ./neorg-pandoc.lua
}

local M = {
    'nvim-neorg/neorg',
    lazy = false,
    version = '*',
    config = function()
        local main = require('neorg')
        main.setup({ load = NEORG_MODULES, })
    end,
}

return { M }
