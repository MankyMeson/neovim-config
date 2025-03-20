local g = vim.g


local M = {
    'dense-analysis/ale',

-- Config function runs on startup.
    config = function()
        g.ale_linters = {
            lua = { 'lua_language_server' },
            fortran = { 'fortls' }
        }
    end,
}


return { M }
