--[[
-- VIMRC
-- init.lua
--
-- Main script for neovim configuration.
--]]

local opt = vim.opt
local g = vim.g
local cmd = vim.cmd
local keymap = vim.keymap


-- Line numbers.
opt.number = true
opt.relativenumber = true


-- Searching.
opt.hlsearch = true
opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true


-- Tab and indentation behaviour.
opt.expandtab = true
opt.autoindent = true
opt.shiftwidth = 4
opt.smartindent = true
opt.softtabstop = 4


-- Scrolling and cursor behaviour.
opt.scrolloff = 5
opt.sidescrolloff = 5
--opt.cursorline = true


-- Tab and space display.
opt.list = true
opt.listchars:append {
    tab = "▸ ",
    trail = "·"
}


-- Set leader key to space.
g.mapleader = ' '
g.maplocalleader = '\\'


-- Disable netrw. It's necessary for nvim-tree to work and I don't use it anyway.
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1


-- Source lazy.nvim.
require('config.lazy')


-- Syntax highlighting.
opt.termguicolors = true
cmd.colorscheme('tokyonight-night')


-- Keybinds for opening nvim-tree.
keymap.set('n', '<Leader>no', '<cmd>NvimTreeOpen<CR>')
keymap.set('n', '<Leader>nc', '<cmd>NvimTreeClose<CR>')
