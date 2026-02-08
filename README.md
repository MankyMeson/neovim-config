# Neovim Config

This is my personal Neovim configuration. Besides being handy to have so I can reproduce my environment across machines, it could prove useful for anyone who wishes to fork it for a lightweight Neovim installation.

## Installation

Clone this repo into `$HOME/.config/nvim`, open Neovim, then run the command `:Lazy` and hit 'I' to install all plugins.

## Plugins currently included

* [ALE](https://github.com/dense-analysis/ale) for linting.
* [Tokyo Night](https://github.com/folke/tokyonight.nvim) colour scheme.
* [Neorg](https://github.com/nvim-neorg/neorg) support for organising notes.
    * [Neorg Pandoc](https://github.com/champignoom/neorg-pandoc) to innately support Pandoc parsing of norg files.
* [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua) as a file-browser, currently bound to `<n-o>` to open and `<n-c>` to close.
* [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter) for prettier syntax hightlighting. This can get slow in huge files.

