local keymap = vim.keymap

local M = {
    'nvim-tree/nvim-tree.lua',

-- Build function runs on install.
--  build = function()
--
--  end,


-- Config function runs on startup.
    config = function()
        local main = require('nvim-tree')

-- Function runs on attach, allows overwriting of keybinds.
        local function on_attach_custom(bufnr)
            local api = require('nvim-tree.api')

            local function opts(desc)
                return {
                    desc = 'nvim-tree: ' .. desc,
                    buffer = bufnr,
                    noremap = true,
                    silent = true,
                    nowait = true
                }
            end

-- Call default mappings.
            api.config.mappings.default_on_attach(bufnr)

-- Set custom keybinds.
            keymap.set('n', '<Leader>?', api.tree.toggle_help, opts('Help'))
        end

        main.setup({
            on_attach = on_attach_custom,
            sort = { sorter = 'case_sensitive' },
            view = { width = 26 },
        })
    end,
}


return { M }
