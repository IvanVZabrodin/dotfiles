local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)
vim.g.mapleader = ' '

local set = vim.opt -- set options

set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4
-- set.confirm = true

set.termguicolors = true
set.mousemoveevent = true

set.foldmethod = 'expr'
set.foldexpr = 'nvim_treesitter#foldexpr()'
set.foldenable = false

set.relativenumber = true

vim.g.loaded_netrw = true
vim.g.loaded_netrwPlugin = true


require('lazy').setup({
    spec = { { import = 'plugins' }, },
})

vim.cmd([[colorscheme kanagawa]])

require('config.setups')
require('config.dashboard')
require('config.keymaps')
require('config.lsp')

local my_runner = require('config.myrunner')

vim.api.nvim_create_user_command('Run', my_runner.runner, {})

