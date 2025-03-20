--[[
-- lazy.nvim bootstrapping and configuration.
--]]

-- Module aliases.
local fn = vim.fn
local v = vim.v
local api = vim.api


-- Bootstrap lazy.nvim.
local lazypath = fn.stdpath('data') .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
    local out = fn.system({
        'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath
    })
    if v.shell_error ~= 0 then
        api.nvim_echo({
            { 'Failed to clone lazy.nvim\n', 'ErrorMsg' },
            { out, 'WarningMsg' },
            { '\nPress any key to exit...' }
        }, true, {})
        fn.getchar()
        os.exit(1)
    end
end
vim.opt.rtp:prepend(lazypath)

-- Setup lazy.nvim.
require('lazy').setup({
    spec = {
        { import = 'plugins' }
    },
    checker = { enabled = true },
})
